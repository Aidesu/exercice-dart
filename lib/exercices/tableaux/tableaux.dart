import 'package:logger/logger.dart';

var log = Logger();


class Tableaux {

  //* Exercice 1
static var month = [
  "Janvier",
  "Fevrier",
  "Mars",
  "Avril",
  "Mai",
  "Juin",
  "Juillet",
  "Aout",
  "Septembre",
  "Octobre",
  "Novembre",
  "Decembre",
];

//* Exercice 2
static void exercice_2() {
  log.i(Tableaux.month[2]);
}

//* Exercice 3
static void exercice_3() {
  log.i(Tableaux.month[5]);
}

//* Exercice 4
static void exercice_4() {
  Tableaux.month[7] = "août";
  log.i(Tableaux.month[7]);
}

//* Exercice 5
static var departement = {
  77: "Seine-Et-Marne",
  35: "Herault",
  62: "Pas-De-Calais",
  59: "Nord",
  80: "Somme",
  02: "Aisne",
  60: "Oise",
};

//* Exercice 6
static void exercice_6() {
  log.i(Tableaux.departement[59]);
}

//* Exercice 7
static void exercice_7() {
  Tableaux.departement[51] = "Reims";
  log.i(Tableaux.departement);
}

//* Exercice 8
static void exercice_8() {
  for (var m in month) {
    log.i(m);
  }
}

//* Exercice 9
static void exercice_9() {
  Tableaux.departement.forEach((k, d) {
    log.i(d);
  });
}

//* Exercice 10
static void exercice_10() {
  Tableaux.departement.forEach((k, d) {
    log.i(k.toString() + " est le departement de " + d);
  });
}
}