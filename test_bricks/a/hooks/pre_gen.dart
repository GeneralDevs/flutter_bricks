import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  var name = context.vars['name'];

  // Use the `Logger` instance.
  context.logger.info('Hello $name! log teste');

  // Update vars.
  context.vars['name'] = 'jonas';

//todo! aqui eu concateno as variaveis do brick.yaml, adicionando outras, no caso o fullname ali por exemplo.
// assim nao necessariamente todas as variveis precisam ser passadas la
  context.vars = {
    ...context.vars,
    'fullname': 'robertao',
  };
}
