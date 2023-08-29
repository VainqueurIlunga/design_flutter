//import 'package:app_project/pages/login.pages.dart';
import 'package:app_project/pages/search.pages.dart';
import 'package:app_project/pages/settings.pages.dart';
import 'package:app_project/pages/testing.pages.dart';
import 'package:flutter/material.dart';
import 'package:app_project/pages/contact.pages.dart';
import 'package:app_project/pages/form.pages.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget 
{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}
class MenuPage extends StatelessWidget
{
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenue"),
        backgroundColor: Colors.black,
        ),
      
      body:const MyCard() ,
      bottomNavigationBar: BottomAppBar(child: 
      Row(
        children: [
          SizedBox(
            width: 85,
            height: 80,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return TestingPage();
                  })
                );
              },
                
              icon:const Icon(
                Icons.home,
                size: 60,
                ),
              ),
          ),
          SizedBox(
            width: 85,
            height: 80,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const SearchePage();
                })
                );
              }, 
              icon: const Icon(
                Icons.search,
                size: 60,
                )
              ),
          ),
          const Spacer(),
          SizedBox(
            width: 85,
            height: 80,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const MyContactsPage();
                  }
                  )
                );
              }, 
              icon: const Icon(
                Icons.group,
                size: 60,
                )
              ),
          ),
          SizedBox(
            width: 85,
            height: 80,
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const SettingsPage();
                })
                );
              }, 
              icon:const Icon(
                Icons.settings,
                size: 60,
                )
              )
          ),
        ],
      )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context){
              return const FormPage();
            }
            ) //afficher une page
          )
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //appBar: AppBar(title: ,),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/pc1.jpg", width: 150,),
              const Column(
                children: [
                  Text("350.000fc"),
                  Text("Ram:4GB"),
                  Text("Hdd:500GB"),
                ],
              )  
            ],
          ),
          Row(
            children: [
              Image.asset("assets/pc2.jpeg", width: 150,),
              const Column(
                children: [
                  Text("350.000fc"),
                  Text("Ram:4GB"),
                  Text("Hdd:500GB"),
                ],
              )  
            ],
          )
          
        ],
      ),
    ),
    Card(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/f1.jpeg", width: 150,),
              const Column(
                children: [
                  Text("350.000fc"),
                  Text("Ram:4GB"),
                  Text("Hdd:500GB"),
                ],
              )  
            ],
          ),
          Row(
            children: [
              Image.asset("assets/f2.jpeg", width: 150,),
              const Column(
                children: [
                  Text("350.000fc"),
                  Text("Ram:4GB"),
                  Text("Hdd:500GB"),
                ],
              )  
            ],
          )
          
        ],
      ),
    )
    ],
      
    );
  }
}