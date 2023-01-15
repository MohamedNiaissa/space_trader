import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import '../../backend/local_storage.dart';
import '../../controller/CRUD_user_controller.dart';

class FormUser extends StatefulWidget {
  const FormUser({Key? key}) : super(key: key);

  @override
  State<FormUser> createState() => _FormUserState();
}

class _FormUserState extends State<FormUser> {
  final login_form = GlobalKey<FormState>();

  TextEditingController username = new TextEditingController();
  TextEditingController photo = new TextEditingController();
  TextEditingController telephone = new TextEditingController();
  TextEditingController profilFFI = new TextEditingController();
  TextEditingController dateNaiss = new TextEditingController();
  Map<String, dynamic> user =
  jsonDecode(LocalStorageHelper.getValue("token").substring(12));



  @override
  Widget build(BuildContext context) {
    username.text = user["nom"];
    photo.text = user["photo"];

    if(user["telephone"] == null) {
      telephone.text = "non renseigné";
    } else {
      telephone.text = user["telephone"];
    }

    if(user["profilFFI"] == null) {
      profilFFI.text = "non renseigné";
    } else {
      profilFFI.text = user["profilFFI"];
    }

    if(user["dateNaiss"] == null) {
      dateNaiss.text = "non renseigné";
    } else {
      dateNaiss.text = user["dateNaiss"];
    }


    Map<String, String> userInfos;
    return Padding(
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom utilisateur',
                 enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                ),
              ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre nom d'utilisateur ";
                }
                return null;
              },
              controller: photo,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Photo d'utilisateur",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre photo d'utilisateur ";
                }
                return null;
              },
              controller: dateNaiss,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Date de naissance',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Veuillez entrer votre date de naissance";
                }
                return null;
              },
              controller: profilFFI,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Profil FFI',
                focusedBorder: OutlineInputBorder(
                ), enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                ),
              ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () => {
                   [{"fieldname" : "nom", "fieldvalue" : username.text}, {"fieldname" : "photo", "fieldvalue":  photo.text}, {"fieldname" : "profilFFI", "fieldvalue":  profilFFI.text}, {"fieldname" : "dateNaiss", "fieldvalue":  dateNaiss.text}].forEach((field) {
                     if (field["fieldname"] == "profilFFI" && field["fieldvalue"] != "non renseigné") {
                      CRUDUserController.updateUserDatas("nom", user["nom"], field["fieldname"], field["fieldvalue"]);
                     } else if (field["fieldname"] == "nom") {
                       CRUDUserController.updateUserDatas("nom", user["nom"], field["fieldname"], field["fieldvalue"]);
                     } else if (field["fieldname"] == "photo") {
                       CRUDUserController.updateUserDatas("nom", user["nom"], field["fieldname"], field["fieldvalue"]);
                     } else if (field["fieldname"] == "dateNaiss" && field["fieldvalue"] != "non renseigné") {
                       CRUDUserController.updateUserDatas("nom", user["dateNaiss"], field["fieldname"], field["fieldvalue"]);
                     }
                   }),

                  developer.log(user["nom"]),
                  developer.log(user.toString()),

                //  CRUDUserController.updateUserDatas("nom", user["nom"], "nom", username.text),
                  setState(() {
                  })
             /*   CRUDUserController.updateUserDatas("username", user["nom"], "photo", photo.text),
                if (profilFFI.text != "non renseigné") {
                  CRUDUserController.updateUserDatas("username", user["nom"], "profilFFI", profilFFI.text),
                },
                if (dateNaiss.text != "non renseigné") {
                  CRUDUserController.updateUserDatas("username", user["nom"], "dateNaiss", dateNaiss.text),
                }

              */
              }, child: Text("Modifier !"),
              ),
            )
          ]
          )
      ),
    );
  }
}
