import 'package:space_trader_game/backend/local_storage.dart';
import 'package:space_trader_game/models/Utilisateurs.dart';
import 'package:mongo_dart/mongo_dart.dart';

import '../backend/mongodb.dart';
import 'package:crypt/crypt.dart';
import 'package:intl/intl.dart';


import '../models/Actualites.dart';


class CRUDUser {
  static createUser(String username, String mail,String photo, String mdp) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Utilisateurs');

    //final hash_pass = Crypt.sha256(mdp);

    Utilisateurs new_user = new Utilisateurs(username, mdp, photo, mail);

    LocalStorageHelper.saveValue("token", new_user.toString());
    await collection.insertOne(new_user.toMap());

    var subscription = await collection.findOne({"nom": username});

    DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");

    Actualites new_actualite = new Actualites("Inscription", subscription["_id"], dateFormat.format(DateTime.now()), dateFormat.format(DateTime.now()), false);

    collection = await db.collection('Actualites');

    await collection.insertOne(new_actualite.toMap());

  }

  static isUserThere(String username, String mdp) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Utilisateurs');

    var user = await collection.find({
      'nom': username,
      'mdp': mdp
    }).toList();

    try {
      Utilisateurs newUser = Utilisateurs(
        user[0]['nom'],
        user[0]['mdp'],
        user[0]['photo'],
        user[0]['mail'],
        telephone: user[0]['telephone'],
        profilFFI: user[0]['profilFFI'],
        dateNaiss: user[0]['dateNaiss'],
        isGerant: user[0]['isGerant'],
      );
      return newUser;
    } catch (e){
      throw Error();
    }
  }

  static updateUser(field, username, modifyfield, value) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Utilisateurs');
    collection.updateOne(
        where.eq(field, username), modify.set(modifyfield, value));
    // collection.updateOne(where.eq("nom", "bsr"), modify.set("mdp", "bjr"));


  }
}

