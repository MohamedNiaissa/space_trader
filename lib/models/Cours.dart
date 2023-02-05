import 'package:intl/intl.dart';

class Cours {
  late String nomCours;
  late String niveau;
  late String terrain;
  late String date;
  late String endCours;
  late String discipline;
  late int nombreDePlace;

  Cours(this.nomCours, this.niveau, this.terrain, this.date, this.endCours, this.discipline, this.nombreDePlace);

  String toString() {
    //DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
    return 'Cours{"nomConcours": "'+nomCours+'", "niveau": "'+niveau+'", "terrain": "'+terrain+'", "date": "'+date+'", "duree": "'+endCours+'", "discipline": "'+discipline+', "nombreDePlace": "'+nombreDePlace.toString()+'"}';
  }

  Map<String, dynamic> toMap() {
    return {
      'nomCours': nomCours,
      'niveau': niveau,
      'terrain': terrain,
      'date': date,
      'endCours': endCours,
      'discipline': discipline,
      'nombreDePlace': nombreDePlace
    };
  }
}