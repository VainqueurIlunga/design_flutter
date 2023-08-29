import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: const Text("Login"),
     // ),
      body: Column(
      children: <Widget>[
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(28),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width:150,
                    height: 150,
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/d.jpg"),
                        fit: BoxFit.fill,
                        )
                    ),
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