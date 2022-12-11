import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:space_trader_game/controller/CRUD_user_controller.dart';

import '../../controller/login_controller.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
   TextEditingController username = new TextEditingController();
  TextEditingController mdp = new TextEditingController();

  final login_form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(50.0),
      child: Form(
          key: login_form,
          child: Column(children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre nom d'utilisateur ";
                }
                return null;
              },
              controller: username,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom utilisateur',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ), enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              ),
            ),
            SizedBox(height: 15), // Espace entre les deux champs
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer votre mot de passe';
                }
                return null;
              },
              controller: mdp,
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ), enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed:  ()  async => {
                  if (login_form.currentState!.validate())
                    {
                      if(await CRUDUserController.checkUser(username.text, mdp.text) ) {
                       context.go('/profil')
                       },
                      } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Nom d'utilisateur et/ou mot de passe incorrect")),
                    )
                      }
                    },
                child: const Text('Se connecter'),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => {
                  context.go('/signup')
                }, child: Text("S'inscrire"),
              ),
            )
          ]
        )
   ),
    );
  }
}