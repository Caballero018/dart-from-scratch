import 'dart:io';

class Challenge2 {
  // Solicita al usuario dos números. Si el primero es mayor, devuelve
  // su doble, de lo contrario devuelve el triple del segundo.
  void run() {
    print("Ingresa el primer número:");
    int? a = int.tryParse(stdin.readLineSync() ?? '');
    print("Ingresa el segundo número:");
    int? b = int.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    // Con 6, 6 el resultado esperado es 12 (el doble del primero),
    // por eso se usa >= en lugar de >.
    if (a >= b) {
      print("Resultado: ${a * 2}");
    } else {
      print("Resultado: ${b * 3}");
    }
  }
}
