import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophonePage());

class XylophonePage extends StatelessWidget {
  void playSound(String soundName) {
    final player = AudioCache();
    player.play(soundName);
  }

  Expanded buildKey({Color color, String soundName}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => playSound(soundName),
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
            children: <Widget>[
              buildKey(color: Colors.red, soundName: 'note1.wav'),
              buildKey(color: Colors.orange, soundName: 'note2.wav'),
              buildKey(color: Colors.yellow, soundName: 'note3.wav'),
              buildKey(color: Colors.green, soundName: 'note4.wav'),
              buildKey(color: Colors.teal, soundName: 'note5.wav'),
              buildKey(color: Colors.blue, soundName: 'note6.wav'),
              buildKey(color: Colors.purple, soundName: 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
