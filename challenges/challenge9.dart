import 'dart:io';

class Challenge9 {
  // Solicita al usuario los valores para dos fracciones y muestra la
  // diferencia entre esas fracciones.
  void run() {
    print("Ingresa el numerador de la primera fracción:");
    int? num1 = int.tryParse(stdin.readLineSync() ?? '');
    print("Ingresa el denominador de la primera fracción:");
    int? den1 = int.tryParse(stdin.readLineSync() ?? '');

    print("Ingresa el numerador de la segunda fracción:");
    int? num2 = int.tryParse(stdin.readLineSync() ?? '');
    print("Ingresa el denominador de la segunda fracción:");
    int? den2 = int.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || den1 == null || num2 == null || den2 == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (den1 == 0 || den2 == 0) {
      print("Error: El denominador no puede ser cero.");
      return;
    }

    // a/b - c/d = (a*d - c*b) / (b*d)
    int numerador = num1 * den2 - num2 * den1;
    int denominador = den1 * den2;

    if (numerador == 0) {
      print("Resultado: 0");
      return;
    }

    // Simplificar dividiendo entre el máximo común divisor.
    int mcd = numerador.gcd(denominador);
    numerador = numerador ~/ mcd;
    denominador = denominador ~/ mcd;

    // Dejar el signo negativo siempre en el numerador.
    if (denominador < 0) {
      numerador = -numerador;
      denominador = -denominador;
    }

    if (denominador == 1) {
      print("Resultado: $numerador");
    } else {
      print("Resultado: $numerador/$denominador");
    }
  }
}
