import 'package:flutter/material.dart';


{{#is_statefull}}

class {{feature.pascalCase()}}Page extends StatefulWidget {

  const {{feature.pascalCase()}}Page({ super.key });

  @override
  State<{{feature.pascalCase()}}Page> createState() => _{{feature.pascalCase()}}PageState();
}

class _{{feature.pascalCase()}}PageState extends State<{{feature.pascalCase()}}Page> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Container(),
       );
  }
}



{{/is_statefull}}





{{^is_statefull}}


class {{feature.pascalCase()}}Page extends StatelessWidget {
  const {{feature.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}

{{/is_statefull}}




