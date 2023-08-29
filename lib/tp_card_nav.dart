import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardsPage(),
    );
  }
}

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenue"),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children:<Widget> [
              _createCart(),
              _createCart1(),

            ],
          ),

        ),
        ),
        bottomNavigationBar:const GNav(
          
          backgroundColor: Colors.blue,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.black12,
          padding: EdgeInsets.all(15),
          gap: 8,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Accueil"),
            GButton(
              icon: Icons.favorite_border,
              text: "Preferer",),
            GButton(
              icon: Icons.search,
              text: "Recherche",),
            GButton(
              icon: Icons.settings,
              text: "Réglages",),
            GButton(
              icon: Icons.contact_emergency,
              text: "Contact",
              ),

          ],
          ),

    );
  }
  
Widget _createCart() 
  {
    return  Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
        children:<Widget> [
          FadeInImage(
            placeholder: AssetImage("assets/pc1.jpg"), 
            image: AssetImage("assets/pc1.jpg"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Ordinateur Dell \n 550.000Fc \n Ram:8GB \n HDD: 500GB \n CPU: I5 256Ghz",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )
            )
        ],
      )
            

      ),
      );

    
}
Widget _createCart1() 
  {
    return  Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Column(
        children:<Widget> [
          FadeInImage(
            placeholder: AssetImage("assets/f1.jpeg"), 
            image: AssetImage("assets/f1.jpeg"),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Ordinateur Dell fix\n 450.000Fc \n Ram:8Gb \n HDD: 500GB",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )
            )
        ],
      )
            

      ),
      );

    
}
}