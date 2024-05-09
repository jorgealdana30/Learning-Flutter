import 'dart:io';

void main() {
  print("Ingresa un numero: ");
  int numero = int.parse(stdin.readLineSync().toString());
  print("Imprimiendo tabla del numero $numero");
  tablaMultiplicar(numero: numero);
}

void tablaMultiplicar({required int numero}) {
  for (int i = 1; i <= 10; i++) {
    print("$numero * $i = ${numero * i}");
  }
}
