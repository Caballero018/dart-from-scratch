import 'dart:io';
import 'dart:math';

class Challenge3 {
  // Pide al usuario un número. Si es positivo, devuelve su raíz
  // cuadrada, de lo contrario, devuelve su cuadrado.
  void run() {
    print("Ingresa un número:");
    double? n = double.tryParse(stdin.readLineSync() ?? '');

    if (n == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    double resultado;
    if (n > 0) {
      resultado = sqrt(n);
    } else {
      resultado = n * n;
    }

    // Si el resultado no tiene decimales se muestra como entero (3 en vez de 3.0).
    if (resultado == resultado.roundToDouble()) {
      print("Resultado: ${resultado.toInt()}");
    } else {
      print("Resultado: $resultado");
    }
  }
}
