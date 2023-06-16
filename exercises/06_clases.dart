void main(){

  final Hero wolverine = Hero(name: 'Logan');
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine);
}

class Hero{
  String name;
  String power;
  
 /* Hero(String pName, String pPower)
    : name = pName, 
      power = pPower;*/
  
  Hero({
    required this.name, 
    this.power = 'Sin poder'
  });
  
  @override
  String toString() {
    return '$name - $power';
  }
}