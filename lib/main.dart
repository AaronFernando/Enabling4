import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int l = 1;
  int r = 1;
  @override
  Widget build(BuildContext context) {
    int sum = l+r;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text('By: Aaron Jeremy G. Fernando',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(child: Padding(
                padding: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        statechange();
                      });
                    },
                    child: Image.asset('images/dice$l.png')),
              )
              ),
              Expanded(child: Padding(
                padding: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        statechange();
                      });
                    },
                    child: Image.asset('images/dice$r.png')),
              )
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text('Sum of the two dices is $sum',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              l == r ? ('The dices are equal :D') : ('The dices are not equal :P'),
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: l == r ? Colors.lightGreen : Colors.red[300]
              ),
            ),
          )
        ],
      ),
    );
  }
  void statechange(){
    l = 1 + Random().nextInt(6);
    r = 1 + Random().nextInt(6);
  }
}



