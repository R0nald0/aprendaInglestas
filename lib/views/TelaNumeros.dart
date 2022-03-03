import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TelaNumeros extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TelaNumerosState();

}

class TelaNumerosState extends State<TelaNumeros>{
 AudioCache audioCache = AudioCache(prefix: "assets/audios/");

   List<String> numeros=[
          "assets/imagens/1.png",
          "assets/imagens/2.png",
          "assets/imagens/3.png",
          "assets/imagens/4.png",
          "assets/imagens/5.png",
          "assets/imagens/6.png"
   ];

     List<String> audios=[
       "1.mp3",
       "2.mp3",
       "3.mp3",
       "4.mp3",
       "5.mp3",
       "6.mp3",
     ];
  play(String audio) async{
     await audioCache.play(audio);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
          children: <Widget>[
            GestureDetector(
               onTap: (){  play(audios[0]); },
               child: Image.asset(numeros[0].toString()),
            ) ,GestureDetector(
               onTap: (){  play(audios[1]);    },
               child: Image.asset(numeros[1].toString()),
            ) ,GestureDetector(
               onTap: (){  play(audios[2]);  },
               child: Image.asset(numeros[2].toString()),
            ) ,GestureDetector(
               onTap: (){  play(audios[3]);  },
               child: Image.asset(numeros[3].toString()),
            ) ,GestureDetector(
               onTap: (){  play(audios[4]); },
               child: Image.asset(numeros[4].toString()),
            ) ,GestureDetector(
               onTap: (){  play(audios[5]); },
               child: Image.asset(numeros[5].toString()),
            ) ,

          ],

      )
    );
  }
   _criandotela(){
      List<String> lista =[];

     for(var item in numeros){

     }

   }

}