import 'dart:io';

class Challenge5 {
  // Solicita al usuario un número entre 1 y 7 y muestra el día de la
  // semana correspondiente, pero solo considerando los días laborables.
  void run() {
    print("Ingresa un número entre 1 y 7:");
    int? dia = int.tryParse(stdin.readLineSync() ?? '');

    if (dia == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    switch (dia) {
      case 1:
        print("Resultado: Lunes");
        break;
      case 2:
        print("Resultado: Martes");
        break;
      case 3:
        print("Resultado: Miércoles");
        break;
      case 4:
        print("Resultado: Jueves");
        break;
      case 5:
        print("Resultado: Viernes");
        break;
      case 6:
      case 7:
        print("Resultado: Número fuera del rango laboral.");
        break;
      default:
        print("Resultado: El número debe estar entre 1 y 7.");
        break;
    }
  }
}
