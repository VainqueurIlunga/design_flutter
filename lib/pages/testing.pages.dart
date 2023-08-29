import 'package:flutter/material.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: ListView(
        children: [
          Card(
              child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              decoration: const BoxDecoration(
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(12.0)), 
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
                    hintStyle: TextStyle(color: Color.fromARGB(255, 243, 33, 37)),
                    icon: Icon(Icons.search, color: Colors.blue,)
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
          
        ],
      ),
    );
  }
}