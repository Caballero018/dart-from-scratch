import 'dart:io';
import 'dart:math';


class Challenge1 {
  // Solicita al usuario un número y eleva este número al cuadrado
  // solo si es positivo.
  void run() {
    print("Hola Bienvenido al challenge1");
    print("Por favor ingresa un número: ");
    
    String? input = stdin.readLineSync();
    int? n = int.tryParse(input ?? '');

    if (n == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (n < 0) {
      print("Resultado: Número negativo.");
    } else {
      print("Resultado: ${pow(n, 2)}");
    }
  }
}
