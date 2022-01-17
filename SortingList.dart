void main() {
  List traningList = [5, 3, 6, 2, 10];

  print(selectionSort(traningList));
}

int findSmallest(List myList) {
  int smallestIndex = 0;
  int smallestNumber = myList[0];
  for (int i = 0; i < myList.length; i++) {
    if (myList[i] < smallestNumber) {
      smallestNumber = myList[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

List selectionSort(List myList) {
  List newList = [];
  int i;
  for (i = 0; i <= myList.length; i++) {
    int smallestIndex = findSmallest(myList);
    newList.add(myList[smallestIndex]);
    myList.remove(myList[smallestIndex]);
    i = 0;
  }
  return newList;
}
