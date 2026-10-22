import 'dart:io';

class Challenge7 {
  // Solicita dos números y muestra el residuo de la división del
  // primero entre el segundo.
  void run() {
    print("Ingresa el primer número (dividendo):");
    int? dividendo = int.tryParse(stdin.readLineSync() ?? '');
    print("Ingresa el segundo número (divisor):");
    int? divisor = int.tryParse(stdin.readLineSync() ?? '');

    if (dividendo == null || divisor == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (divisor == 0) {
      print("Error: No se puede dividir entre 0.");
      return;
    }

    print("Resultado: ${dividendo % divisor}");
  }
}
