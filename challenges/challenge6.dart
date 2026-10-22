import 'dart:io';

class Challenge6 {
  // Solicita al usuario su salario anual y, si este excede los 12000,
  // muestra el impuesto a pagar que es el 15% del excedente.
  void run() {
    print("Ingresa tu salario anual:");
    double? salario = double.tryParse(stdin.readLineSync() ?? '');

    if (salario == null) {
      print("Error: No ingresaste un número válido.");
      return;
    }

    if (salario <= 12000) {
      print("Resultado: No debe impuestos.");
      return;
    }

    double excedente = salario - 12000;
    // Se multiplica por 15 y se divide entre 100 en lugar de usar 0.15,
    // porque los decimales no siempre son exactos (0.1 + 0.2 da 0.30000000000000004).
    double impuesto = excedente * 15 / 100;

    if (impuesto == impuesto.roundToDouble()) {
      print("Resultado: ${impuesto.toInt()}");
    } else {
      print("Resultado: ${impuesto.toStringAsFixed(2)}");
    }
  }
}
