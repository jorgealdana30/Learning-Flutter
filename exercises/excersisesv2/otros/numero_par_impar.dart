import 'dart:io';

void main() {
  print("Numero par o impar");
  print("Ingrese un numero entero: ");
  int numero = int.parse(stdin.readByteSync().toString());
  numeroParOImpar(numero: numero);
}

void numeroParOImpar({required int numero}) {
  if (numero % 2 == 0) {
    print("El numero es par");
  } else {
    print("El numero es impar");
  }
}
