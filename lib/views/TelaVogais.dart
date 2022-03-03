import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TelaVogais extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => TelaVogaisState();

}
class TelaVogaisState extends State<TelaVogais>{
  List<String> audios=[
    "1.mp3",
    "2.mp3",
    "3.mp3",
    "4.mp3",
    "5.mp3",
    "6.mp3",
    "cao.mp3",
    "gato.mp3",
    "leao.mp3",
    "macaco.mp3",
    "ovelha.mp3",
    "vaca.mp3",
  ];
  List<String> numeros=[
    "assets/imagens/1.png",
    "assets/imagens/2.png",
    "assets/imagens/3.png",
    "assets/imagens/4.png",
    "assets/imagens/5.png",
    "assets/imagens/6.png",
    "assets/imagens/cao.png",
    "assets/imagens/gato.png",
    "assets/imagens/leao.png",
    "assets/imagens/macaco.png",
    "assets/imagens/ovelha.png",
    "assets/imagens/vaca.png"
  ];

  AudioCache audioCache = AudioCache(prefix: "assets/audios/");

  play(audioName) async{
     await audioCache.play(audioName);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioCache.loadAll(audios);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Container(
             child: Column(
                children: <Widget>[
                   Expanded(
                      child: ListView.builder(
                          itemCount: numeros.length,
                          itemBuilder: (context,index) {
                            return Dismissible(
                              key: Key(DateTime.now().microsecondsSinceEpoch.toString()),
                              child: ListTile(
                                title: Row(
                                  children: <Widget>[
                                    Image.asset(numeros[index],height: 80,width: 80,),
                                    Padding(padding: EdgeInsets.only(left: 180),
                                        child: GestureDetector(
                                          onTap: (){
                                            play(audios[index]);
                                          },
                                          child: Image.asset("assets/imagens/executar.png",height: 40,width: 40,),
                                        )
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                      )
                  )

                ],
             ),
         ),
    );
  }


}