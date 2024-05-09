import 'dart:io';

import 'package:path/path.dart' as p;

void main() {
  print("Procesador de texto");
  print("Opciones");
  print("""
  1. Leer Texto
  2. Guardar Texto
  Escoja opción valida: 
  """);
  int opcion = int.parse(stdin.readLineSync().toString());
  ProcesadorTexto procesadorTexto = ProcesadorTexto();
  switch (opcion) {
    case 1:
      {
        procesadorTexto.leerArchivo();
        break;
      }
    case 2:
      {
        print("Escriba su mensaje: ");
        String mensaje = stdin.readLineSync().toString();
        procesadorTexto.guardarArchivo(mensaje);
        break;
      }
    default: {
      print("Error en las opciones");
    }
  }
}

abstract class Procesador {
  void guardarArchivo(String mensaje);

  void leerArchivo();
}

class ProcesadorTexto extends Procesador {
  @override
  void guardarArchivo(String mensaje) async {
    final String filePath =
        p.join(Directory.current.path, 'assets', 'archivo.txt');
    final File file = File(filePath);
    try {
      await file.writeAsString(mensaje);
      print("Archivo guardado exitosamente");
    } catch (error) {
      print("No se pudo guardar el archivo: $error");
    }
  }

  @override
  void leerArchivo() async {
    final String filePath =
        p.join(Directory.current.path, 'assets', 'archivo.txt');
    final File file = File(filePath);
    final String content = await file.readAsString();
    print(content);
  }
}
