import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Code(),
    );
  }
}

class Code extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Coding();
  }
}

class Coding extends State<Code>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AudioPlayer audioPlayer=new AudioPlayer();
    AudioCache audioCache=new AudioCache(fixedPlayer: audioPlayer);
    audioCache.play('song.mp3');
  }

  @override
  Widget build(BuildContext context) {
         return Scaffold(
           backgroundColor: Colors.black,
           body: Center(
             child: Image.network("https://www.animatedimages.org/data/media/373/animated-heart-image-0503.gif"),
           ),
         );
  }
}


