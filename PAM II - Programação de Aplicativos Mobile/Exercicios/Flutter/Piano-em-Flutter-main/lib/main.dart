import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {

  void tocarSom(int numNota){
    final player = AudioCache();
    player.play('nota$numNota.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(1);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(2);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.orange.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(3);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(4);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.green.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(5);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.blue.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(6);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.purple.shade900),
                  child: null,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    tocarSom(7);
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.black),
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
