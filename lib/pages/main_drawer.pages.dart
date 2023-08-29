import 'package:flutter/material.dart';
class MainDraw extends StatelessWidget {
  const MainDraw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(28),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width:100,
                    height: 100,
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
                  const Text(
                    "Franck Vainqueur",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white),
                    ),
                    const Text(
                    "ilungafranck236@gmail.com",
                    style: TextStyle(
                      color: Colors.white),
                    ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.message_sharp),
            title: Text(
              "Messege",
              style: TextStyle(
                fontSize: 18,
                ),
              ),
              onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.call),
            title: Text(
              "Appel",
              style: TextStyle(
                fontSize: 18,
                ),
              ),
              onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.video_call_rounded),
            title: Text(
              "Video",
              style: TextStyle(
                fontSize: 18,
                ),
              ),
              onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              "Mail",
              style: TextStyle(
                fontSize: 18,
                ),
              ),
              onTap: null,
          )


        ],
      ),
    );
  }
}