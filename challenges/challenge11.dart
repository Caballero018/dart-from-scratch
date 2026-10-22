import 'dart:io';

class Challenge11 {
  // Pide al usuario cuatro números y muestra el promedio.
  void run() {
    double suma = 0;

    for (int i = 1; i <= 4; i++) {
      print("Ingresa el número $i:");
      double? n = double.tryParse(stdin.readLineSync() ?? '');

      if (n == null) {
        print("Error: No ingresaste un número válido.");
        return;
      }

      suma += n;
    }

    double promedio = suma / 4;

    // Si el promedio no tiene decimales se muestra como entero (5 en vez de 5.0).
    if (promedio == promedio.roundToDouble()) {
      print("Resultado: ${promedio.toInt()}");
    } else {
      print("Resultado: $promedio");
    }
  }
}
