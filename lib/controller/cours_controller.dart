
import '../services/cours.dart';

class CoursController {
  static insertCoursFromForm(String cours_name, String niveau, String terrain, String date, String endCours, String discipline, int nombreDePlace) {
    CoursClass.insertCours(cours_name, niveau, terrain, date, endCours, discipline, nombreDePlace);
  }

}