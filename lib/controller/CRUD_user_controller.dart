import 'dart:convert';
import 'dart:math';

import 'package:space_trader_game/services/CRUD_user.dart';
import 'dart:developer' as developer;

import '../backend/local_storage.dart';

class CRUDUserController {
  static createANewUser(
      String username, String mail, String photo, String mdp) {
      CRUDUser.createUser(username, mail, photo, mdp);
  }

  static checkUser(String username, String mdp) async {
    try {
      await CRUDUser.isUserThere(username, mdp).then((userI) => {
        LocalStorageHelper.saveValue("token", userI.toString()),
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  static updateUserDatas(field, username, modifyfield, value) {
    Map<String, dynamic> user =
    jsonDecode(LocalStorageHelper.getValue("token").substring(12));
    CRUDUser.updateUser(field, username, modifyfield, value);
    user[modifyfield] = value;
    LocalStorageHelper.saveValue("token", user.toString());
    developer.log('update user from service', name: 'update.user.datas');
    developer.log(username, name: 'update.user.datas');
    developer.log(modifyfield, name: 'modified field');
    developer.log(value, name: 'updated value');
  }
}
