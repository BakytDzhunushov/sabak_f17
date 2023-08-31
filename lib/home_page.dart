import 'package:flutter/material.dart';
import 'package:sabak_f17/components/piano_button.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static AudioCache player = AudioCache(prefix: 'assets/');
  void playAudio(String sound) {
    player.play(sound);
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: const Text('Flutter Piano'),
      ),
      body: Column(children: [        
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, infex) {
              return Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PianoWhiteButton(onWhitePress: () {playAudio('a3.mp3');}),
                      PianoWhiteButton(onWhitePress: () {playAudio('c3.mp3');}),
                      PianoWhiteButton(onWhitePress: () {playAudio('d3.mp3');}),
                      PianoWhiteButton(onWhitePress: () {playAudio('e3.mp3');}),
                      PianoWhiteButton(onWhitePress: () {playAudio('f3.mp3');}),
                      PianoWhiteButton(onWhitePress: () {playAudio('g3.mp3');}),                     
                      PianoWhiteButton(onWhitePress: () {playAudio('b3.mp3');}),                      
                    ],
                  ),
                  Positioned(
                    height: 190,
                    left: 30.0,
                    right: 10,
                    top: 0,

                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoBlackButton(onBlackPress: () {playAudio('a-3.mp3');}),                        
                        PianoBlackButton(onBlackPress: () {playAudio('c-3.mp3');}),                        
                        const SizedBox(width: 60),
                        PianoBlackButton(onBlackPress: () {playAudio('d-3.mp3');}),
                        PianoBlackButton(onBlackPress: () {playAudio('f-3.mp3');}),
                        PianoBlackButton(onBlackPress: () {playAudio('g-3.mp3');}),                                        
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}
