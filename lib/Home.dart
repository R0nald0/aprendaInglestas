import 'package:aprendaingles/views/TelaNumeros.dart';
import 'package:aprendaingles/views/TelaVogais.dart';
import 'package:aprendaingles/views/Telabichos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>HomeState();
   
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  double tamanhoFonte = 19;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text("Aprenda Inglês"),
          bottom: TabBar(
             indicatorWeight: 4,
             indicatorColor: Colors.white,
            controller: _tabController,
            tabs:<Widget>[
              Tab(
                child: Text("Bichos",
                  style:TextStyle(
                    fontSize: tamanhoFonte
                  ) ,
                ),
              ),
              Tab(
                child: Text("Números",
                 style:TextStyle(
                    fontSize: tamanhoFonte
                 ) ,
                ),
              ),
              Tab(
                 child: Text("Todos",
                 style:TextStyle(
                    fontSize: tamanhoFonte
                  ),
                 ),
               ),
            ],
          ),
        ),

        body: TabBarView(
          controller: _tabController,
          children: [
              Telabichos(),
              TelaNumeros(),
              TelaVogais()
          ],
        ),

      );
  }
}