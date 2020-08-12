import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int toneNumber=1;
  void playsound(int t){
    final player=AudioCache();
    player.play('note$t.wav');
  }

  Expanded buildKey({Color color, int t}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(t);
        },
        child: Text(
            '......',
          style: TextStyle(color: Colors.brown),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[
              buildKey(color: Colors.red,t: 1),
              buildKey(color: Colors.yellowAccent,t: 2),
              buildKey(color: Colors.lightGreen,t: 3),
              buildKey(color: Colors.lightBlueAccent,t: 4),
              buildKey(color: Colors.purple,t: 5),
              buildKey(color: Colors.teal,t: 6),
              buildKey(color: Colors.pink,t: 7),
            ],
          ),
        ),
      ),
    );
  }
}
