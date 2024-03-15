void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Vito',
    'hp': 100,
    'isALive': true,
    'abilities': <String>['impostor'],
    'sprites' : {
      1: 'Vito/front.png',
      2: 'Vito/back.png'
    }
  };
  
  
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');
  
  print('Back: ${pokemon['sprites'][2] }');
  print('Front: ${pokemon['sprites'][1] }');
}
