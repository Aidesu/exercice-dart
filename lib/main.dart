import './exercices/variables/variables.dart';
import './exercices/conditions/conditions.dart';
import './exercices/boucles/boucles.dart';
import './exercices/tableaux/tableaux.dart';
import './exercices/fonctions/fonctions.dart';
import './models/products/products.dart';

import 'package:logger/logger.dart';
var log = Logger();

void main() async {
  final exoVariables = Variables();
  final exoConditions = Conditions();
  final exoBoucles = Boucles();

  //log.i(await FetchProducts.fetchAll());
  await FetchProducts.fetchOne(5);
  await FetchProducts.fetchOne(2);
  await FetchProducts.fetchOne(9);
  Products.listProducts();

//   //! Variables
//   exoVariables.exercice_1("Carla");
//   exoVariables.exercice_2();
//   exoVariables.exercice_3();
//   exoVariables.exercice_4();
//   exoVariables.exercice_5();
//   exoVariables.exercice_6();
//   exoVariables.exercice_7();
//   exoVariables.exercice_8();

//   //! Conditions
//   exoConditions.exercice_1();
//   exoConditions.exercice_2();
//   exoConditions.exercice_3();
//   exoConditions.exercice_4();
//   exoConditions.exercice_5();
//   exoConditions.exercice_6();

//   //! Boucles
//   exoBoucles.exercice_1();
//   exoBoucles.exercice_2();
//   exoBoucles.exercice_3();
//   exoBoucles.exercice_4();
//   exoBoucles.exercice_5();
//   exoBoucles.exercice_6();
//   exoBoucles.exercice_7();
//   exoBoucles.exercice_8();

// //! Tableaux
//   Tableaux.exercice_2();
//   Tableaux.exercice_3();
//   Tableaux.exercice_4();
//   Tableaux.exercice_6();
//   Tableaux.exercice_7();
//   Tableaux.exercice_8();
//   Tableaux.exercice_9();
//   Tableaux.exercice_10();
  

//   //! Fonctions
//   Fonctions.exercice_1();
//   Fonctions.exercice_2("Je suis une licorne");
//   Fonctions.exercice_3("Je suis une salope", "Je suis une catin");
//   Fonctions.exercice_4(24, 15);
//   Fonctions.exercice_5(11, "Je suis une connasse");
//   Fonctions.exercice_6("Carla", "Deafiaa", 22);
//   Fonctions.exercice_7(19, Gender.femme);
//   Fonctions.exercice_8(nmb1: 2, nmb2: 2, nmb3: 2);
}