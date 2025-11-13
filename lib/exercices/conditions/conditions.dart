import 'package:logger/logger.dart';
var log = Logger();
enum Gender { femme, homme }

class Conditions {

  //* Exercice 1
void exercice_1() {
  int age = 12;
  if (age > 0 && age < 18) {
    log.i("Vous avez " + age.toString() + " ans vous etes donc mineur");
  } else if (age <= 18 && age >= 120) {
    log.i("Vous avez " + age.toString() + " ans vous etes donc majeur");
  }
}

//* Exercice 2
void exercice_2() {
  int age = 28;
  final gender = Gender.femme;
  String? strAge;
  String? strGender;

  age < 18 ? strAge = "Mineur" : strAge = "Majeur";
  gender == Gender.femme ? strGender = "une femme" : strGender = "un homme";

  if (!strAge.isEmpty && !strGender.isEmpty) {
    log.i("Vous etes " + strGender + " et vous etes " + strAge);
  }
}

//* Exercice 3
void exercice_3() {
  String gender = "femme";
  if (gender == "homme") {
    log.i("C'est un developpeur");
  } else if (gender == "femme") {
    log.i("C'est une developpeuse");
  }
}

//* Exercice 4
void exercice_4() {
  int monAge = 88;
  if (monAge < 18 && monAge > 0) {
    log.i("Vous etes mineur");
  } else if (monAge >= 18 && monAge <= 120) {
    log.i("Vous etes majeur");
  }
}

//* Exercice 5
void exercice_5() {
  bool maVariable = false;
  if (maVariable == true) {
    log.i("C'est ok");
  } else {
    log.i("C'est pas bon");
  }
}

//* Exercice 6
void exercice_6() {
  bool maVariable = true;
  if (maVariable) {
    log.i("C'est ok");
  } else {
    log.i("C'est pas bon");
  }
}
}