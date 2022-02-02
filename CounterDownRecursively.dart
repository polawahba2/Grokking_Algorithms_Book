void main() {
  counterDownRecursively(10);
}

dynamic counterDownRecursively(int number) {
  print(number);
  if (number <= 0) return null; //Base case
  counterDownRecursively(number - 1); //Recursive case
}
