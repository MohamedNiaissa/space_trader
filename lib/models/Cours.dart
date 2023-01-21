import 'package:intl/intl.dart';

class Cours {
  late String nomCours;
  late String niveau;
  late String terrain;
  late int duree;
  late String discipline;
  late int nombreDePlace;

  Cours(this.nomCours, this.niveau, this.terrain, this.duree, this.discipline, this.nombreDePlace);

  String toString() {
    //DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
    return 'Cours{"nomConcours": "'+nomCours+'", "niveau": "'+niveau+'", "terrain": "'+terrain+'", "duree": "'+duree.toString()+'", "discipline": "'+discipline+', "nombreDePlace": "'+nombreDePlace.toString()+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nomCours': nomCours,
      'niveau': niveau,
      'terrain': terrain,
      'duree': duree,
      'discipline': discipline,
      'nombreDePlace': nombreDePlace
    };
  }
}