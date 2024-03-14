import 'dart:io';

void main() {
  print("Factorial de un numero: ");
  print("Ingresa un numero: ");
  int numero = int.parse(stdin.readLineSync().toString());
  print(
      "El factorial del numero $numero es: ${factorialNumero(numero: numero)}");
}

int factorialNumero({required int numero}) {
  int factorial = numero;
  for (int i = numero; i > 1; i--) {
    factorial *= i-1;
  }
  return factorial;
}
