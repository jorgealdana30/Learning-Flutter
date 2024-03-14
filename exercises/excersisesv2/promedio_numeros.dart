import 'dart:io';

void main() {
  print("Promedio de numeros, inicializando...");
  CalcPromedio calcPromedio = CalcPromedio();
  print("Ingrese los datos");
  calcPromedio.init();
  print("El promedio es de: ${calcPromedio.promNumbers()}");
}

class CalcPromedio {
  late List<int> numeros;

  void init() {
    numeros = List.empty(growable: true);
    for (int i = 0; i < 3; i++) {
      print("Ingrese numero: ${i + 1}: ");
      numeros.add(int.parse(stdin.readLineSync().toString()));
    }
  }

  double promNumbers() {
    int suma = 0;
    for (int i in numeros) {
      suma += i;
    }
    return suma / numeros.length;
  }
}
