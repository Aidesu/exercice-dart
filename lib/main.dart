// import 'dart:ffi';
// import 'package:flutter/material.dart';
import 'dart:ffi';
import 'dart:math';
import 'package:logger/logger.dart';
import 'dart:io';

var log = Logger();
Random random = new Random();

void main() {
  // runApp(const MyApp());
  log.d("Message debug"); // debug
  log.i("Information"); // info
  log.w("Avertissement"); // warning
  log.e("Erreur"); // error

  helloWorld("blabla");
  e1("Carla");
  e2();
  e3();
  e4();
  e5();
  e6();
  e7();
  e8();
  e1p2();
  e2p2();
  e3p2();
  e4p2();
  e5p2();
  e6p2();
  e1p3();
  e2p3();
  e3p3();
  e4p3();
  e5p3();
  e6p3();
  e7p3();
  e8p3();
  e2p4();
  e3p4();
  e4p4();
  e6p4();
  e7p4();
  e1p5();
  e2p5("Je suis une licorne");
  e3p5("Je suis une salope", "Je suis une catin");
  e4p5(24, 15);
  e5p5(11, "Je suis une connasse");
  e6p5("Carla", "Deafiaa", 22);
  e7p5(15, Gender.femme);
  e8p5(nmb1: 2, nmb2: 2, nmb3: 2);
}

void helloWorld(String word) {
  log.i(word);
}

//* Exercice 1
void e1(String name) {
  String usedName = name;
  log.i('My name is ' + usedName);
}

//* Exercice 2
void e2() {
  String firstName = "Carla";
  String lastName = "Deafiaa";
  int age = 99;
  log.i("i'm " + firstName + " " + lastName + " and I have " + age.toString());
}

//* Exercice 3
void e3() {
  int km = 1;
  log.i("km = " + km.toString());
  km = 3;
  log.i("km = " + km.toString());
  km = 125;
  log.i("km = " + km.toString());
}

//* Exercice 4
void e4() {
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
void e5() {
  int? feur;
  log.i(feur.toString());
  feur = 2;
  log.i(feur.toString());
}

//* Exercice 6
void e6() {
  String name = "Carla";
  log.i("Bonjour " + name + ", comment vas tu ?");
}

//* Exercice 7
void e7() {
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
void e8() {
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

//! Les conditions

//* Exercice 1
void e1p2() {
  int age = 12;
  if (age > 0 && age < 18) {
    log.i("Vous avez " + age.toString() + " ans vous etes donc mineur");
  } else if (age <= 18 && age >= 120) {
    log.i("Vous avez " + age.toString() + " ans vous etes donc majeur");
  }
}

//* Exercice 2
enum Gender { femme, homme }

void e2p2() {
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
void e3p2() {
  String gender = "femme";
  if (gender == "homme") {
    log.i("C'est un developpeur");
  } else if (gender == "femme") {
    log.i("C'est une developpeuse");
  }
}

//* Exercice 4
void e4p2() {
  int monAge = 88;
  if (monAge < 18 && monAge > 0) {
    log.i("Vous etes mineur");
  } else if (monAge >= 18 && monAge <= 120) {
    log.i("Vous etes majeur");
  }
}

//* Exercice 5
void e5p2() {
  bool maVariable = false;
  if (maVariable == true) {
    log.i("C'est ok");
  } else {
    log.i("C'est pas bon");
  }
}

//* Exercice 6
void e6p2() {
  bool maVariable = true;
  if (maVariable) {
    log.i("C'est ok");
  } else {
    log.i("C'est pas bon");
  }
}

//! Les boucles

//* Exercice 1
void e1p3() {
  int counter = 0;
  while (counter != 10) {
    counter++;
    log.i(counter);
  }
}

//* Exercice 2
void e2p3() {
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
void e3p3() {
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
void e4p3() {
  int nmb = 1;
  while (nmb <= 10) {
    log.i(nmb.toString());
    nmb += nmb;
  }
}

//* Exercice 5
void e5p3() {
  int pas = 1;
  int position = 0;
  int arrived = 15;
  while (position != arrived) {
    log.i("On y arrive presque");
    position += pas;
  }
}

//* Exercice 6
void e6p3() {
  int pas = 1;
  int position = 20;
  int arrived = 0;
  while (position != arrived) {
    position -= pas;
    log.i("C'est presque bon !");
  }
}

//* Exercice 7
void e7p3() {
  int pas = 15;
  int position = 1;
  int arrived = 100;
  while (position >= arrived) {
    position += pas;
    log.i("Ontie4nt le bon bout");
  }
}

//* Exercice 8
void e8p3() {
  int pas = 12;
  int position = 200;
  int arrived = 0;
  while (position < arrived) {
    position -= pas;
    log.i("Enfin !!!");
  }
}

//! Tableaux

//* Exercice 1
var month = [
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
void e2p4() {
  log.i(month[2]);
}

//* Exercice 3
void e3p4() {
  log.i(month[5]);
}

//* Exercice 4
void e4p4() {
  month[7] = "août";
  log.i(month[7]);
}

//* Exercice 5
var departement = {
  77: "Seine-Et-Marne",
  35: "Herault",
  62: "Pas-De-Calais",
  59: "Nord",
  80: "Somme",
  02: "Aisne",
  60: "Oise",
};

//* Exercice 6
void e6p4() {
  log.i(departement[59]);
}

//* Exercice 7
void e7p4() {
  departement[51] = "Reims";
  log.i(departement);
}

//* Exercice 8
void e8p4() {
  for (var m in month) {
    log.i(m);
  }
}

//* Exercice 9
void e9p4() {
  departement.forEach((k, d) {
    log.i(d);
  });
}

//* Exercice 10
void e10p4() {
  departement.forEach((k, d) {
    log.i(k.toString() + " est le departement de " + d);
  });
}

//! Les fonctions

//* Exercice 1
bool e1p5() {
  return true;
}

//* Exercice 2
void e2p5(String prompt) {
  log.i(prompt);
}

//* Exercice 3
void e3p5(String prompt1, String prompt2) {
  log.i(prompt1 + " " + prompt2);
}

//* Exercice 4
void e4p5(int nmb1, int nmb2) {
  nmb1 > nmb2
      ? "Le premier nombre est plus grand"
      : "Le deuxieme nombre est plus grand";
}

//* Exercice 5
void e5p5(int nmb, String prompt) {
  log.i(nmb.toString() + " " + prompt);
}

//* Exercice 6
void e6p5(String firstName, String lastName, int age) {
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
void e7p5(int age, Gender gender) {
  String? strAge;
  String? strGender;

  age < 18 ? strAge = "Mineur" : strAge = "Majeur";
  gender == Gender.femme ? strGender = "une femme" : strGender = "un homme";

  if (!strAge.isEmpty && !strGender.isEmpty) {
    log.i("Vous etes " + strGender + " et vous etes " + strAge);
  }
}

//* Exercice 8
void e8p5({int nmb1 = 1, int nmb2 = 1, int nmb3 = 1}) {
  int result = nmb1 + nmb2 + nmb3;
  log.i(result.toString());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
//       ),
//       home: const MyHomePage(title: 'UwU'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('Feur coubeh:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             SizedBox(width: 100, height: 25),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.home),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
