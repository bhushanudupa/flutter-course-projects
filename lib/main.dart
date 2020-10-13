import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

Widget buildKey(int num, Color color) {
  final AudioCache player = AudioCache();
  return Expanded(
      child: FlatButton(
    minWidth: double.infinity,
    color: color,
    onPressed: () {
      player.play(('note$num.wav'));
    },
  ));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildKey(1, Colors.purple),
                  buildKey(2, Colors.orange),
                  buildKey(3, Colors.green),
                  buildKey(4, Colors.blue),
                  buildKey(5, Colors.teal),
                  buildKey(6, Colors.pink),
                  buildKey(7, Colors.amber),
                ]),
          ),
        ),
      ),
    );
  }
}
