//import 'dart:js_interop';

import 'package:app_project/pages/stock_contact.pages.dart';
import 'package:flutter/material.dart';

import 'AddContactForm.pages.dart';
import 'main_drawer.pages.dart';
class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyContactsPage(),
    );
  }
}

class MyContactsPage extends StatelessWidget {
  const MyContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: 
        const Text("Contacts"),
        backgroundColor: Colors.black,
        actions:  [ 
          Padding(
            padding:EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return const AddContactForm();
                  }
                  )
                  );
              },
              icon: Icon(Icons.add)),
            
          )

        ],
      ),
      drawer:const MainDraw(),

      body:ListView( 
        children: contacts.map((item){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
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