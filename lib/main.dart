import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Xylophone",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void handlePlaySound({required int number}) {
    AudioCache audioCache = AudioCache();
    audioCache.play("note$number.wav");
  }

  Expanded ColorSoundCard({required Color kColor, required int soundNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: () => handlePlaySound(number: soundNumber),
        child: Container(
          color: kColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ColorSoundCard(kColor: Colors.red, soundNumber: 1),
          ColorSoundCard(kColor: Colors.orange, soundNumber: 2),
          ColorSoundCard(kColor: Colors.yellow, soundNumber: 3),
          ColorSoundCard(kColor: Colors.green, soundNumber: 4),
          ColorSoundCard(kColor: Colors.grey, soundNumber: 5),
          ColorSoundCard(kColor: Colors.blue, soundNumber: 6),
          ColorSoundCard(kColor: Colors.purple, soundNumber: 7),
        ],
      ),
    );
  }
}
