import 'package:flutter/material.dart';

{{#stateful}}
class {{name.pascalCase()}} extends StatefulWidget {
  const {{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  _{{name.pascalCase()}}State createState() => _{{name.pascalCase()}}State();
}

class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{name.pascalCase()}}'),
      ),
      body: Center(
        child: Text('Hello, {{name.pascalCase()}}!'),
      ),
    );
  }
}
{{/stateful}}

{{^stateful}}
class {{name.pascalCase()}} extends StatelessWidget {
  const {{name.pascalCase()}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('{{name.pascalCase()}}'),
      ),
      body: Center(
        child: Text('Hello, {{name.pascalCase()}}!'),
      ),
    );
  }
}
{{/stateful}}
