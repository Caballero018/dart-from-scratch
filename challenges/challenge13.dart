import 'dart:io';

class Challenge13 {
  // Pide una palabra al usuario y devuelve el número de vocales en
  // esa palabra.
  void run() {
    print("Ingresa una palabra:");
    String palabra = (stdin.readLineSync() ?? '').trim().toLowerCase();

    if (palabra.isEmpty) {
      print("Error: No ingresaste ninguna palabra.");
      return;
    }

    String vocales = "aeiouáéíóúü";
    int contador = 0;

    for (int i = 0; i < palabra.length; i++) {
      if (vocales.contains(palabra[i])) {
        contador++;
      }
    }

    print("Resultado: $contador");
  }
}
