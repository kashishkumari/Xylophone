import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void sound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }
  //const XylophoneApp({ Key? key }) : super(key: key);
Expanded buildKey({required Color color , required int number}) {
  return Expanded(
  child: MaterialButton(
    color: color,
    onPressed: (){
      sound(number);
    },
  ),


  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.teal, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}