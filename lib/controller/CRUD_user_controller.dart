import 'package:space_trader_game/services/CRUD_user.dart';

import '../backend/local_storage.dart';

class CRUDUserController {
  static createANewUser(
      String username, String mail, String photo, String mdp) {
    CRUDUser.createUser(username, mail, photo, mdp);
  }

  static checkUser(String username, String mdp) async {
    try {
      await  CRUDUser.isUserThere(username, mdp).then((userI) => {
        LocalStorageHelper.saveValue("token", userI.toString()),
      });
      return true;
    } catch (e) {
      return false;
    }
  }

}
