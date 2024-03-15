import 'package:collection/collection.dart';

void main() {
  String firstWord = "Labio", secondWord = "Bailo";
  bool isAnagram = isValidAnagram(firstWord, secondWord);
  if (isAnagram) {
    print("La palabra '$firstWord' es Anagrama de '$secondWord'");
  } else {
    print("Las palabras no son Anagramas");
  }
}

bool isValidAnagram(String firstWord, String secondWord) {
  //Se crean dos listas a partir de quitar espacios en blanco, y obtener lista de codigos de cada caracter
  List<int> firstTemp = List.from(firstWord.toLowerCase().replaceAll(' ', '').codeUnits);
  List<int> secondTemp = List.from(secondWord.toLowerCase().replaceAll(' ', '').codeUnits);

  //Se compara si ambas listas tienen la misma longitud, si no son iguales, no son anagramas
  if (firstTemp.length != secondTemp.length) {
    return false;
  }

  //Se ordenan las listas para que queden de A a Z
  firstTemp.sort();
  secondTemp.sort();

  //Se hace el recorrido de ambas listas para determinar si son identicamente iguales.
  return IterableEquality().equals(firstTemp, secondTemp);
}
