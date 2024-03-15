void main(){
   
  print(greetEveryone());
  print('Suma: ${addTwoNumbersOptional(10, 20)}');
  print(greetPerson(name: 'Jorge', message: 'Hi, '));
}


String greetEveryone() => 'Hello Everyone';

int addTwoNumbers (int a, int b) => a+b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b?? = 0 es lo mismo q parametro opcional
  return a + b;
}

String greetPerson( {required String name, String message = 'Hola, '}) {
  return '$message $name';
}
