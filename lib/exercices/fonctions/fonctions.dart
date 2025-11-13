import 'package:logger/logger.dart';
import '../conditions/conditions.dart';
var log = Logger();

class Fonctions  {

//* Exercice 1
static bool exercice_1() {
  return true;
}

//* Exercice 2
static void exercice_2(String prompt) {
  log.i(prompt);
}

//* Exercice 3
static void exercice_3(String prompt1, String prompt2) {
  log.i(prompt1 + " " + prompt2);
}

//* Exercice 4
static void exercice_4(int nmb1, int nmb2) {
  log.i(nmb1 > nmb2
      ? "Le premier nombre est plus grand"
      : "Le deuxieme nombre est plus grand");
}

//* Exercice 5
static void exercice_5(int nmb, String prompt) {
  log.i(nmb.toString() + " " + prompt);
}

//* Exercice 6
static void exercice_6(String firstName, String lastName, int age) {
  log.i(
    "Bonjour " +
        lastName +
        " " +
        firstName +
        " vous avez " +
        age.toString() +
        " ans.",
  );
}

//* Exercice 7
static void exercice_7(int age, Gender gender) {
  String? strAge;
  String? strGender;

  age < 18 ? strAge = "Mineur" : strAge = "Majeur";
  gender == Gender.femme ? strGender = "une femme" : strGender = "un homme";

  if (!strAge.isEmpty && !strGender.isEmpty) {
    log.i("Vous etes " + strGender + " et vous etes " + strAge);
  }
}

//* Exercice 8
static void exercice_8({int nmb1 = 1, int nmb2 = 1, int nmb3 = 1}) {
  int result = nmb1 + nmb2 + nmb3;
  log.i(result.toString());
}

}