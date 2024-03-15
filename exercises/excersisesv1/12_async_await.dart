void main() async {
  try {
    final value = await httpGet("https://google.com");
    print(value);
  } catch (err) {
    print("Hay un error de codigo: $err");
  }
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Respuesta de la petición correctamente';
}
