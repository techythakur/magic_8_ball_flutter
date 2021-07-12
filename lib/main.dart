import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade800,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade800,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballNumber= Random().nextInt(5)+1;
          });
          print('I got clicked');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
