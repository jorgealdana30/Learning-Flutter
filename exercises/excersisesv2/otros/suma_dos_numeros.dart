void main() {
  Calculadora calculadora = Calculadora();
  print("La suma es: ${calculadora.sumaNumeros(numero1: 30, numero2: 20)}");
  print("La resta es: ${calculadora.restaNumero(numero1: 30, numero2: 20)}");
  print(
      "La multiplicación es: ${calculadora.multiNumero(numero1: 30, numero2: 20)}");
  print("La división es: ${calculadora.dividirNumero(numero1: 30, numero2: 2)}");
}

class Calculadora {
  int sumaNumeros({required int numero1, required int numero2}) =>
      numero1 + numero2;

  int restaNumero({required int numero1, required int numero2}) =>
      numero1 - numero2;

  int multiNumero({required int numero1, required int numero2}) =>
      numero1 * numero2;

  double dividirNumero({required int numero1, required int numero2}) {
    if(numero2 == 0) throw "No se puede dividir entre 0";
    return numero1 / numero2;
  }
}
