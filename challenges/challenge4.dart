import 'dart:io';
import 'dart:math';

class Challenge4 {
  // Pide al usuario el radio de un círculo y calcula su perímetro.
  void run() {
    print("Ingresa el radio del círculo:");
    double? radio = double.tryParse(stdin.readLineSync() ?? '');

    if (radio == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (radio < 0) {
      print("Error: El radio no puede ser negativo.");
      return;
    }

    double perimetro = 2 * pi * radio;
    print("Resultado: ${perimetro.toStringAsFixed(2)}");
  }
}
