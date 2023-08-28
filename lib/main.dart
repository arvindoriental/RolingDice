import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text("DICE"),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftdicenumber=1;
  var rightdicenumber=6;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState((){
                    leftdicenumber=Random().nextInt(6)+1;
                    rightdicenumber=Random().nextInt(6)+1;
                    debugPrint('dicenumber=$leftdicenumber');
                  });
                  },
                child: Image.asset("images/dice$leftdicenumber.png"),
              ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState((){
                  rightdicenumber=Random().nextInt(6)+1;
                  leftdicenumber=Random().nextInt(6)+1;
                  debugPrint('dicenumber=$rightdicenumber');
                });
              },
              child: Image.asset("images/dice$rightdicenumber.png")
            ),
          ),
        ],
      ),
    );
  }
}
