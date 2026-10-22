class Challenge8 {
  // Calcula y muestra la suma de los números pares entre 1 y 50.
  void run() {
    int suma = 0;
    for (int i = 2; i <= 50; i += 2) {
      suma += i;
    }
    print("Resultado: $suma");
  }
}
