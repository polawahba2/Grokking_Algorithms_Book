void main() {
  print(factorialWithRecursion(5));
}

int normalFactorial(int number) {
  int result = 1;
  for (var i = number; i >= 1; i--) {
    result = result * i;
  }
  return result;
}

int factorialWithRecursion(int number) {
  if (number == 1) return 1;
  return number * factorialWithRecursion(number - 1);
}
