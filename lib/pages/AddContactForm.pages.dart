import 'package:flutter/material.dart';

class AddContactForm extends StatelessWidget {
  const AddContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
       AppBar(
        title: Text("New contact"),
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
                  hintText: "Entrer le nom",
                  labelText: "Nom",
                  icon: Icon(Icons.person_add)
                  
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              TextFormField(
                decoration: 
                const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Entrer le num",
                  labelText: "Numero",
                  icon: Icon(Icons.call)
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
              ElevatedButton(onPressed: ()=>{}, child: Text("Enregistrer"))
          
            ]
          ),
          )
          ),

    );
     
  }
}