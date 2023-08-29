import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
  
}

class Myapp extends StatelessWidget
{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
 // hom
 class MyHomePage extends StatelessWidget
 {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // l'entete
      appBar: AppBar(
        // exemple avec button         leading: Icon(Icons.menu),// icon menue

        leading: IconButton(
          icon:const Icon(Icons.menu), 
          onPressed: (){
            print("vous avez cliquer sur le menu");
        },),// icon menue
        title:const Text("Bienvenue!"),
        actions: const[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.alarm),
          ),// icone alarme
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          ), // icone pour la recherche
          Icon(Icons.more_vert),
          
        ],
        ),
      // body
      body: Column(children: [
        Row(children: [
          Image.asset(
            "assets/a.png",
            width: 175,
            //height: 50,
            ),
          Image.asset(
            "assets/b.png",
            width: 175,
            ),
        ],
        ),
        Row(children: [
          Image.asset(
            "assets/c.jpg",
            width: 175,
            ),
            Image.asset(
            "assets/d.jpg",
            width: 175,
            ),
            
        ],)
      ],
      )
      //Center(child: Image.asset("assets/a.png")),
    );
  }
 }