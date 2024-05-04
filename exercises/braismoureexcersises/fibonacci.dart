void main() {
  print(fibonacci(20));
}

String fibonacci(int cantidad) {
  String temp = "";
  int n0 = 0, n1 = 1;
  for (int i = 1; i <= cantidad; i++) {
    temp += "$n0 - ";
    int fib = n0 + n1;
    n1 = n0;
    n0 = fib;
  }
  return temp;
}
