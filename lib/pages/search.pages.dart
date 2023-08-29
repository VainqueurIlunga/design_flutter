import 'package:app_project/pages/stock_contact.pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchePage extends StatefulWidget {
  const SearchePage({super.key});

  @override
  State<SearchePage> createState() => _SearchePageState();
}

class _SearchePageState extends State<SearchePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.red));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(50, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(22.0)), 
          ) ,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              const Expanded(
                flex: 1,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.search, color: Colors.white,)
                  ),
                ),
              ),
              Expanded(
                flex: 0,
                child:Row( 
                  children: <Widget>[
                    IconButton(
                      onPressed: (){},
                       icon: Icon(Icons.mic, color: Colors.white,)
                      ),
                      VerticalDivider(color: Colors.white54),
                      IconButton(onPressed: (){},
                       icon: Icon(Icons.more_vert, color: Colors.white),
                       ),
                  ],
                ) ,
              ),
            ],

          ),
        ),
      ),
      body: ListView( 
        children: contacts.map((item){
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(item["Name"]),
              subtitle: Text(item["Numero"]),
            ),
          );
        }).toList(),  

      ),
    );
  }
}