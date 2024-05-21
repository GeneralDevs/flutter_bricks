import 'package:flutter/material.dart';




class Cartao extends StatelessWidget {
  const Cartao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartao'),
      ),
      body: Center(
        child: Text('Hello, Cartao!'),
      ),
    );
  }
}

