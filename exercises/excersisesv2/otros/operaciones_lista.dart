import 'dart:io';

void main() {
  final List<int> listaNumeros = List.empty(growable: true);
  final operacionesImpl = OperacionesImpl(listaNumeros: listaNumeros);
  int opcion = 0;
  do {
    print("""
  Operaciones con Lista de numeros
    1. Agregar nuevo elemento.
    2. Eliminar elemento existente.
    3. Buscar elemento si existe.
    4. Mostrar lista de numeros.
    Ingrese una opción:
  """);
    opcion = int.parse(stdin.readLineSync().toString());
    switch (opcion) {
      case 1:
        {
          print("Ingresa nuevo numero a la lista: ");
          int numero = int.parse(stdin.readLineSync().toString());
          operacionesImpl.agregar(numero);
          break;
        }
      case 2:
        {
          print("Ingresa numero a eliminar: ");
          int numero = int.parse(stdin.readLineSync().toString());
          operacionesImpl.eliminar(numero)
              ? print("Numero eliminado correctamente.")
              : print("No se ha podido encontrar el numero a eliminar.");
          break;
        }
      case 3:
        {
          print("Ingresa numero a buscar: ");
          int numero = int.parse(stdin.readLineSync().toString());
          operacionesImpl.buscar(numero)
              ? print("Numero encontrado.")
              : print("No existe el numero");
          break;
        }
      case 4:
        {
          operacionesImpl.showList();
          break;
        }
    }
  } while (opcion <= 4);
  print("Cerrado programa...");
}

abstract class Operaciones {
  late List<int> listaNumeros;

  void agregar(int numero);

  bool eliminar(int numero);

  bool buscar(int numero);

  void showList();
}

class OperacionesImpl implements Operaciones {
  OperacionesImpl({required this.listaNumeros});

  @override
  void agregar(int numero) {
    listaNumeros.add(numero);
  }

  @override
  bool buscar(int numero) {
    return listaNumeros.contains(numero);
  }

  @override
  bool eliminar(int numero) {
    bool isDeleted = false;
    if (buscar(numero)) {
      isDeleted = listaNumeros.remove(numero);
    }
    return isDeleted;
  }

  @override
  void showList() {
    print("\nLista de numeros: ");
    String list = "";
    listaNumeros.forEach((element) {
      list += "$element - ";
    });
    print(list);
  }

  @override
  List<int> listaNumeros;
}
