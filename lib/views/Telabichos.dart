import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


class Telabichos extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TelabichosState();

}

class TelabichosState extends State<Telabichos>{
  String caminhoImg ="assets/imagens";
  List<String> nomesBichos=[
    "assets/imagens/cao.png",
    "assets/imagens/gato.png",
    "assets/imagens/leao.png",
    "assets/imagens/macaco.png",
    "assets/imagens/ovelha.png",
    "assets/imagens/vaca.png"
  ];

  List<String> audios=[
         "cao.mp3",
         "gato.mp3",
         "leao.mp3",
         "macaco.mp3",
         "ovelha.mp3",
         "vaca.mp3",
  ];

  AudioPlayer audioPlayer =AudioPlayer();
   AudioCache audioCache =AudioCache(prefix: "assets/audios/");

 play(String audio) async {

     await audioCache.play(audio);

 }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: GridView.count(crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
           children: <Widget>[
             GestureDetector(
               onTap: (){
                  play(audios[0]);
               },
               child: Image.asset(nomesBichos[0].toString()),
             ) ,GestureDetector(
               onTap: (){play(audios[1]);},
               child: Image.asset(nomesBichos[1]),
             ) ,GestureDetector(
               onTap: (){play(audios[2]);},
               child: Image.asset(nomesBichos[2].toString()),
             ) ,GestureDetector(
               onTap: (){play(audios[3]);},
               child: Image.asset(nomesBichos[3].toString()),
             ) ,GestureDetector(
               onTap: (){
                 play(audios[4]);
               },
               child: Image.asset(nomesBichos[4].toString()),
             ) ,GestureDetector(
               onTap: (){play(audios[5]);},
               child: Image.asset(nomesBichos[5].toString()),
             ) ,



           ],
          )
      );
  }

/*

 */

}