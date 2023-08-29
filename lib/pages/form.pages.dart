//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulaire"),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Form(
          child: 
          ListView(
            padding: const EdgeInsets.all(45),
            children: [
              TextFormField(
                decoration: 
                const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Entrer votre nom",
                  labelText: "Nom",
                  icon: Icon(Icons.search)
                  
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              TextFormField(
                decoration: 
                const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Entrer votre prenom",
                  labelText: "Prenom",
                  icon: Icon(Icons.person_2_outlined)
                ),
              ),
              
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              const Text.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(text: "vous devrais remplir tous les champs",
                  style: TextStyle(
                    fontStyle: 
                    FontStyle.italic,
                    color: Colors.red,
                    )
                  )
                ],
                )
              ),
              ElevatedButton(onPressed: ()=>{}, child: Text("Valider"))
          
            ]
          ),
          )
          ),

    );
  }
}