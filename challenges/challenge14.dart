import 'dart:io';

class Challenge14 {
  // Pide un número al usuario y devuelve el factorial de ese número.
  void run() {
    print("Ingresa un número:");
    int? n = int.tryParse(stdin.readLineSync() ?? '');

    if (n == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (n < 0) {
      print("Error: El factorial no existe para números negativos.");
      return;
    }

    // A partir de 21! el resultado ya no cabe en un int.
    if (n > 20) {
      print("Error: El número es demasiado grande (máximo 20).");
      return;
    }

    int factorial = 1;
    for (int i = 2; i <= n; i++) {
      factorial *= i;
    }

    print("Resultado: $factorial");
  }
}
