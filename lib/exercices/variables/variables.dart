import 'package:logger/logger.dart';
var log = Logger();

class Variables {

  //* Exercice 1
void exercice_1(String name) {
  String usedName = name;
  log.i('My name is ' + usedName);
}

//* Exercice 2
void exercice_2() {
  String firstName = "Carla";
  String lastName = "Deafiaa";
  int age = 99;
  log.i("i'm " + firstName + " " + lastName + " and I have " + age.toString());
}

//* Exercice 3
void exercice_3() {
  int km = 1;
  log.i("km = " + km.toString());
  km = 3;
  log.i("km = " + km.toString());
  km = 125;
  log.i("km = " + km.toString());
}

//* Exercice 4
void exercice_4() {
  String name = "Carla";
  int score = 12;
  double money = 19.54;
  bool connect = false;

  log.i(
    "String : " +
        name +
        " | Int : " +
        score.toString() +
        " | Float : " +
        money.toString() +
        " | Boolean : " +
        connect.toString(),
  );
}

//* Exercice 5
void exercice_5() {
  int? feur;
  log.i(feur.toString());
  feur = 2;
  log.i(feur.toString());
}

//* Exercice 6
void exercice_6() {
  String name = "Carla";
  log.i("Bonjour " + name + ", comment vas tu ?");
}

//* Exercice 7
void exercice_7() {
  String firstName = "Carla";
  String lastName = "Deafiaa";
  int age = 99;
  log.i(
    "Bonjour " +
        firstName +
        " " +
        lastName +
        ", vous avez " +
        age.toString() +
        " ans",
  );
}

//* Exercice 8
void exercice_8() {
  int calc1 = 3 + 4;
  int calc2 = 5 * 20;
  double calc3 = 45 / 5;

  log.i(
    "Calcul 1 : " +
        calc1.toString() +
        " | Calcul 2 : " +
        calc2.toString() +
        " | Calcul 3 " +
        calc3.toString(),
  );
}
}