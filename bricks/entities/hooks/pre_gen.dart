// ignore_for_file: lines_longer_than_80_chars, avoid_catching_errors

import 'dart:io';

import 'package:mason/mason.dart';

import 'json_handler/model_generator.dart';
import 'json_handler/syntax.dart';
import 'entity_service.dart';
import 'property.dart';
import 'utils/recase.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;
  final additionals = context.vars['additionals'] as List<dynamic>;
  var hasRelations = context.vars['relations'] != null &&
      (context.vars['relations'] as List).isNotEmpty;

  //Todo! aqui vem a logica dos templates com o use_aquilo, se na lista dos adicionais
  // foi adicionado tostring, equatable, eles viram boleanos aqui.
  context.vars = {
    ...context.vars,
    'hasRelations': hasRelations,
    'use_copywith': additionals.contains('copyWith'),
    'use_equatable': additionals.contains('equatable'),
    'use_none': true,
    'jsonIndex': ((context.vars['jsonIndex'] as int?) ?? 0),
  };

  final jsonFile = File(context.vars['jsonFile']);
  final jsonIndex = context.vars['jsonIndex'] as int;

  /// Check for json file --jsonFile
  if (jsonFile.existsSync()) {
    context.vars = {
      ...context.vars,
      'json': jsonFile.readAsStringSync(),
    };
  }

  /// If there is seeded-json, then handle json
  if (context.vars['json'] is String &&
      (context.vars['json'] as String).isNotEmpty) {
    final classes = ModelGenerator(context.vars['entity_name'])
        .generateClassDefinitions(context.vars['json'] as String);
    final classToParse =
        classes.length - 1 >= jsonIndex ? classes[jsonIndex] : null;
    final classFieldsToParse = classToParse != null
        ? classes[jsonIndex].fields
        : <String, TypeDefinition>{};

    final propertiesFromJson = <Map<String, dynamic>>[
      ...classFieldsToParse.keys.map(
        (e) {
          final value = classFieldsToParse.entries
              .firstWhere((element) => element.key == e)
              .value;
          final type =
              '''${value.name}${(value.subtype != null) ? '<${value.subtype}>' : ''}''';
          return {
            'name': e,
            'type': type,
          };
        },
      )
    ];

//todo! aqui eu concateno as variaveis do brick.yaml, adicionando outras.
    context.vars = {
      ...context.vars,
      'relations': (classToParse?.dependencies ?? [])
          .map((e) => {'name': ReCase(e.name).snakeCase})
          .toList(),
      'entity_name': (classToParse?.name ?? context.vars['entity_name']),
      'properties': propertiesFromJson,
      'hasRelations': (classToParse?.dependencies.isNotEmpty == true),
    };

    hasRelations = (classToParse?.dependencies.isNotEmpty == true);
  }

  final hasSeededProperties = context.vars['properties'] != null &&
      (context.vars['properties'] as List).isNotEmpty;

  // For relations check:
  // As relations requires the lib directory, we make this check
  // beforehand to make sure we are in the lib directory.
  if (hasRelations) {
    final progress = logger.progress('Validating output directory');
    await EntityService.validateDirectory(context);
    progress.complete('Valid output directory!');
  }

  final properties = <Map<String, dynamic>>[];

  if (hasSeededProperties) {
    final seededProperties = context.vars['properties'] as List;
    EntityService.verifySeededProperties(seededProperties, logger);
    for (final property in seededProperties) {
      EntityService.addProperty(
        properties,
        Property.fromMap(property as Map<String, dynamic>),
      );
    }
  } else if (
      //Todo! adicionando atributos na mao
      // String name
      // int age
      // depois digita "e" para sair + enter
      logger.confirm(
    '? Do you want to add properties to your entity?',
    defaultValue: true,
  )) {
    EntityService.addProperties(logger, properties);
  }

  context.vars = {
    ...context.vars,
    'properties': properties,
    'hasProperties': properties.isNotEmpty,
  };
}

Future<void> preGenHookWrapper(HookContext context,
    {Function(Map<String, dynamic> value)? preGenHookChanged}) async {
  await run(context);
  preGenHookChanged?.call(context.vars);
}
