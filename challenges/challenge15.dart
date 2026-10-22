import 'dart:io';

class Challenge15 {
  // Pide un número al usuario y verifica si está en el rango de 10 a 20
  // (ambos incluidos).
  void run() {
    print("Ingresa un número:");
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    if (n == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (n >= 10 && n <= 20) {
      print("Resultado: Está en el rango.");
    } else {
      print("Resultado: Fuera del rango.");
    }
  }
}
