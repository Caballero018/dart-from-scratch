import 'dart:io';

class Challenge12 {
  // Pide al usuario cinco números y muestra el más pequeño.
  void run() {
    int? menor;

    for (int i = 1; i <= 5; i++) {
      print("Ingresa el número $i:");
      int? n = int.tryParse(stdin.readLineSync() ?? '');

      if (n == null) {
        print("Error: No ingresaste un número válido.");
        return;
      }

      if (menor == null || n < menor) {
        menor = n;
      }
    }

    print("Resultado: $menor");
  }
}
