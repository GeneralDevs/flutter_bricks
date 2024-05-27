import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read vars.
  var name = context.vars['name'];

  // Use the `Logger` instance.
  context.logger.info('Hello $name!');

  // Update vars.
  context.vars['name'] = 'jonas';
}
