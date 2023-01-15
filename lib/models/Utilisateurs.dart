import 'package:crypt/crypt.dart';

class Utilisateurs {

  late String nom;
  late String mdp;
  late String photo;
  late String mail;
  late String? telephone;
  late String? profilFFI; // Federation Française Intergalctique
  late DateTime? dateNaiss;
  late String? isGerant;

  Utilisateurs(this.nom, this.mdp, this.photo, this.mail,{  this.telephone,
      this.profilFFI,this.dateNaiss, this.isGerant });

  @override
  String toString() {
    //return 'Utilisateurs{"nom": "$nom", "mdp": "$mdp", photo: "$photo", mail: "$mail", telephone: $telephone, profilFFI: $profilFFI, dateNaiss: $dateNaiss, isGerant: $isGerant}';
    return 'Utilisateurs{"nom": "'+nom+'", "mdp": "'+mdp+'", "photo": "'+photo+'", "mail": "'+mail+'", "telephone": $telephone, "profilFFI": $profilFFI, "dateNaiss": $dateNaiss, "isGerant": $isGerant}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nom': nom,
      'mdp': mdp,
      'photo': photo,
      'mail': mail,
      'telephone': telephone,
      'profilFFI' : profilFFI,
      'dateNaiss' : dateNaiss,
      'isGerant' : isGerant,
    };
  }
}