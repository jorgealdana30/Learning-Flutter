void main() {
  final String pokemon = 'Vito';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['vito/front.png', 'vito/back.png'];

  
  // dynamic errorMessage = 'Hola'
  //errorMessage = 1;
  //errorMessage = true;
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
