import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    void playsound(int a){
      final audioPlayer = AudioCache();
      audioPlayer.play('note$a.wav');
    }
    Widget buildkey({Color s,int a}){
     return Expanded(
        child: FlatButton(
          color: s,
          onPressed: () {
            playsound(a);
          },

        ),
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.black,

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(s :Colors.red,a: 1),
              buildkey(s: Colors.orange,a: 2),
              buildkey(s: Colors.yellow,a: 3),
              buildkey(s: Colors.green,a: 4),
              buildkey(s: Colors.blue,a: 5),
              buildkey(s: Colors.indigo,a: 6),
              buildkey(s: Colors.deepPurple,a: 7),
            ],
          ),
        ),
      ),
    );
  }
}
