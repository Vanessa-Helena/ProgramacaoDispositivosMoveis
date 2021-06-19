import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Aplicativo da Vanessa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List comidas = [
    "Macarrão",
    "Arroz",
    "Batata Rustica",
    "Proteina de soja",
    "Batata doce",
    "Lasanha de Queijo",
    "Ovo",
    "Poket"
  ];

  String randomTexto = "";

  void atualizaTela() {
    setState(() {
      randomTexto = comidas[new Random().nextInt(comidas.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Olá Mundo!',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ];
          mainAxisAlignment: MainAxisAlignment.center
      children: <Widget>[
      FlatButton(
        onPressed: (){
          print("Será que imprime");
        },
       color: Colors.orange,
       child: Text('Clique'),

      ),
  

      Text('$randomTexto',
      style: Theme.of(context).textTheme.display,
      ),
      ],
    ),
        ),
      ),
      // ignore: deprecated_member_use
      
  }
}
