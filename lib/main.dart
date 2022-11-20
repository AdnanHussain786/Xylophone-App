import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    playsound(1);
                  },
                  child: const Text(
                    'Play',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {
                    playsound(2);
                  },
                  child:
                      const Text('Play', style: TextStyle(color: Colors.teal))),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    playsound(3);
                  },
                  child: const Text('Play',
                      style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    playsound(4);
                  },
                  child: const Text('Play',
                      style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.pink),
                  onPressed: () {
                    playsound(5);
                  },
                  child: const Text('Play',
                      style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),
                  onPressed: () {
                    playsound(6);
                  },
                  child: const Text('Play',
                      style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.brown),
                  onPressed: () {
                    playsound(7);
                  },
                  child: const Text('Play',
                      style: TextStyle(color: Colors.white))),
            ),
          ]))),
    );
  }
}
