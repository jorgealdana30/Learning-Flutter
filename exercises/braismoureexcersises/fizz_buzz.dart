void main() {
  fizzBuzz();
}

void fizzBuzz() {
  for (int element = 1; element <= 100; element++) {
    bool divisibleByThree = element % 3 == 0;
    bool divisibleByFive = element % 5 == 0;
    if (divisibleByThree && divisibleByFive) {
      print("fizzbuzz");
    } else if (divisibleByThree) {
      print("fizz");
    } else if (divisibleByFive) {
      print("buzz");
    } else {
      print(element);
    }
  }
}
