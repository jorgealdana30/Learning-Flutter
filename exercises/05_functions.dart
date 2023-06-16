void main(){
   
  print(greetEveryone());
  print('Suma: ${addTwoNumbersOptional(10, 20)}');
}


String greetEveryone() => 'Hello Everyone';

int addTwoNumbersOptional(int a, [int b = 0]) {
  //b?? = 0 es lo mismo q parametro opcional
  return a + b;
}