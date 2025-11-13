import 'package:logger/logger.dart';
import 'dart:math';

var log = Logger();
Random random = new Random();

class Boucles {

  //* Exercice 1
void exercice_1() {
  int counter = 0;
  while (counter != 10) {
    counter++;
    log.i(counter);
  }
}

//* Exercice 2
void exercice_2() {
  int nmb = 0;
  int randomNmb = random.nextInt(100);
  while (nmb != 20) {
    int result = nmb * randomNmb;
    log.i(
      nmb.toString() + " + " + randomNmb.toString() + " = " + result.toString(),
    );
    nmb++;
  }
}

//* Exercice 3
void exercice_3() {
  int nmb = 100;
  int randomNmb = random.nextInt(100);
  while (nmb >= 10) {
    double result = nmb / randomNmb;
    log.i(
      "Exo 3 boucles : " +
          nmb.toString() +
          " / " +
          randomNmb.toString() +
          " = " +
          result.toString(),
    );
    nmb--;
  }
}

//* Exercice 4
void exercice_4() {
  int nmb = 1;
  while (nmb <= 10) {
    log.i(nmb.toString());
    nmb += nmb;
  }
}

//* Exercice 5
void exercice_5() {
  int pas = 1;
  int position = 0;
  int arrived = 15;
  while (position != arrived) {
    log.i("On y arrive presque");
    position += pas;
  }
}

//* Exercice 6
void exercice_6() {
  int pas = 1;
  int position = 20;
  int arrived = 0;
  while (position != arrived) {
    position -= pas;
    log.i("C'est presque bon !");
  }
}

//* Exercice 7
void exercice_7() {
  int pas = 15;
  int position = 1;
  int arrived = 100;
  while (position <= arrived) {
    position += pas;
    log.i("On tient le bon bout");
  }
}

//* Exercice 8
void exercice_8() {
  int pas = 12;
  int position = 200;
  int arrived = 0;
  while (position > arrived) {
    position -= pas;
    log.i("Enfin !!!");
  }
}
}