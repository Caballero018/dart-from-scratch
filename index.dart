import 'dart:io';
import 'menu.dart';
import 'challenges/challenge1.dart';
import 'challenges/challenge2.dart';
import 'challenges/challenge3.dart';
import 'challenges/challenge4.dart';
import 'challenges/challenge5.dart';
import 'challenges/challenge6.dart';
import 'challenges/challenge7.dart';
import 'challenges/challenge8.dart';
import 'challenges/challenge9.dart';
import 'challenges/challenge10.dart';
import 'challenges/challenge11.dart';
import 'challenges/challenge12.dart';
import 'challenges/challenge13.dart';
import 'challenges/challenge14.dart';
import 'challenges/challenge15.dart';

void main() {
  print("Ingresa su nombre:");
  String? nombre = stdin.readLineSync();
  print("¡Hola, $nombre! Por favor, elige un ejercicio del siguiente menú:\n");

  var menu = Menu();
  menu.mostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync()?.toLowerCase();
    if (entrada == "0" || entrada == "q" || entrada == "exit") {
      print("¡Hasta luego!");
      break; // Salir del bucle
    }

    int? eleccion = int.tryParse(entrada ?? "");
    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          Challenge1().run();
          break;
        case 2:
          Challenge2().run();
          break;
        case 3:
          Challenge3().run();
          break;
        case 4:
          Challenge4().run();
          break;
        case 5:
          Challenge5().run();
          break;
        case 6:
          Challenge6().run();
          break;
        case 7:
          Challenge7().run();
          break;
        case 8:
          Challenge8().run();
          break;
        case 9:
          Challenge9().run();
          break;
        case 10:
          Challenge10().run();
          break;
        case 11:
          Challenge11().run();
          break;
        case 12:
          Challenge12().run();
          break;
        case 13:
          Challenge13().run();
          break;
        case 14:
          Challenge14().run();
          break;
        case 15:
          Challenge15().run();
          break;
      }

      print("\nPresiona una tecla para continuar...");
      stdin.readLineSync(); // Esto se usa en lugar de Console.ReadKey() en Dart.
      menu.mostrarMenu();
    } else {
      print("Opción no válida. Por favor, ingresa un número entre 1 y 15, o 0, 'q' o 'exit' para salir.");
    }
  }
}
