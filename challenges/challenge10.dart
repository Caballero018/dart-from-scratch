import 'dart:io';

class Challenge10 {
  // Pide una palabra al usuario y muestra la longitud de esa palabra.
  void run() {
    print("Ingresa una palabra:");
    String palabra = (stdin.readLineSync() ?? '').trim();

    if (palabra.isEmpty) {
      print("Error: No ingresaste ninguna palabra.");
      return;
    }

    print("Resultado: ${palabra.length}");
  }
}
