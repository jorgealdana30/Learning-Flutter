import 'dart:io';

void main() {
  print("Conversión de grados: ");
  print("Ingrese datos en Celsius: ");
  ConvertTemperature convertTemperature = ConvertTemperature();
  int celsius = int.parse(stdin.readLineSync().toString());
  print("La conversión es: ${convertTemperature.convertCelsiusToFahrenheit(celsius: celsius)}");
}

class ConvertTemperature {

  double convertCelsiusToFahrenheit({required int celsius}) => ((celsius * (9/5)) + 32).truncateToDouble();
}