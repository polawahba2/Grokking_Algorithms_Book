void main() {
  List l = [1, 2, 3, 4, 5];
  print(sum(l));
  print(sumWithRecursion(l));
  print(sumWithRecursion2(l));
}

int sum(List myList) {
  if (myList.isEmpty) return 0;
  int sum = 0;
  for (int item in myList) {
    sum += item;
  }
  return sum;
}

// Time Complexity = o(n^2)
int sumWithRecursion(List myList) {
  if (myList.isEmpty) return 0;
  return myList[0] + sumWithRecursion(myList.sublist(1));
}

// Time Complexity = o(n)
int sumWithRecursion2(List myList) {
  return sumHelper(myList, 0);
}

int sumHelper(List myList, int start) {
  if (start == myList.length) return 0;
  return myList[start] + sumHelper(myList, start + 1);
}
