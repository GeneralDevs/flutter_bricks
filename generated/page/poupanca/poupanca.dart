import 'package:flutter/material.dart';


class Poupanca extends StatefulWidget {
  const Poupanca({Key? key}) : super(key: key);

  @override
  _PoupancaState createState() => _PoupancaState();
}

class _PoupancaState extends State<Poupanca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poupanca'),
      ),
      body: Center(
        child: Text('Hello, Poupanca!'),
      ),
    );
  }
}



