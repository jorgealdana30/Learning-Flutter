void main(){
   final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': false
  };  
  
 /* final ironMan = Hero(
    isAlive: rawJson['isAlive'] ?? false,
    power: 'Money',
    name: 'Iron Man'
  );
  */
  final ironMan = Hero.fromJson(rawJson);
  print(ironMan);
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString(){
    return '$name, $power, isAlive: ${ isAlive ? 'YES!' : 'Nop'}';
  }

}