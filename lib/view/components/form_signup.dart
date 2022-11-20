import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../controller/CRUD_user_controller.dart';
class FormSignUp extends StatefulWidget {
  const FormSignUp({Key? key}) : super(key: key);

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  TextEditingController username = new TextEditingController();
  TextEditingController mail = new TextEditingController();
  TextEditingController photo = new TextEditingController();
  TextEditingController mdp = new TextEditingController();

final signup_form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Form(
          key: signup_form,
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
                  return "Veuillez entrer votre nom d'utilisateur ";
                }
                return null;
              },
              controller: mail,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mail',
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
            SizedBox(height: 15),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre lien vers votre photo de profil";
                }
                return null;
              },
              controller: photo,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Lien Photo',
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
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre mot de passe";
                }
                return null;
              },
              obscureText: true,
              controller: mdp,
              style: TextStyle(color: Colors.white),
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
            SizedBox(height: 15),
            Center(
              child: TextButton(
                onPressed:  ()  async => {
                  CRUDUserController.createANewUser(username.text, mail.text, photo.text, mdp.text),
                  context.go('/actualities')
                },
                child: const Text("S'inscrire"),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => {
                  context.go('/')
                }, child: Text("Se connecter"),
              ),
            )
          ]
          )
      ),
    );
  }
}
