import 'package:space_trader_game/backend/local_storage.dart';
import 'package:space_trader_game/models/Utilisateurs.dart';

import '../backend/mongodb.dart';
import 'package:crypt/crypt.dart';


class CRUDUser {
  static createUser(String username, String mail,String photo, String mdp) async {
    var db = await MongoDataBase.connect();
    var collection = await db.collection('Utilisateurs');

    //final hash_pass = Crypt.sha256(mdp);

    Utilisateurs new_user = new Utilisateurs(username, mdp, photo, mail);

    LocalStorageHelper.saveValue("token", new_user.toString());
    await collection.insertOne(new_user.toMap());

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
}