void main() {
  //Crear un mapa de info personal
  final Map<String, dynamic> persona = {
    'nombre': 'Jorge',
    'apellido': 'Aldana',
    'fechaNacimiento': DateTime(1996, 9, 30),
    'telefono': 3106659495
  };

  //Accede a un valor por su clave.
  print('${persona['nombre']} ${persona['apellido']}');

  //Verifica si una clave existe en el mapa.
  bool existsKey = persona.containsKey('nombre');
  if(existsKey) print("Existe la llave"); else print("No existe la llave");

  //Obtiene la longitud del mapa.
  //print("Longitud mapa: ${persona.entries.length}");
  print("Longitud mapa: ${persona.length}");

  //Itera sobre las entradas del mapa.
  persona.forEach((key, value) {
    print("${key} : ${value}");
  });

  //Agrega un nuevo par clave-valor al mapa.
  persona.addAll({'segundoNombre': 'Eliecer'});
  print(persona);

  //Elimina un par clave-valor del mapa.
  persona.remove('nombre');
  print(persona);
  
  //Modifica el valor de una clave existente.
  persona.update('apellido', (value) => 'Polo');
  print(persona);

  //Usa la función values para obtener una lista de todos los valores del mapa.
  persona.values.forEach((element) { print(element);});

  //Usa la función keys para obtener una lista de todas las claves del mapa.
  persona.keys.forEach((element) {print(element);});
}