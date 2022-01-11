void main() {
  List checkList = [1, 2, 4, 5, 6, 7, 8];
  print(binarySearch(myList: checkList, item: 7));
}

dynamic binarySearch({
  required List myList,
  required int item,
}) {
  int low = 0;
  int high = myList.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    int guess = myList[mid];
    if (guess == item) {
      return mid;
    }
    if (guess < item) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return 'This Number Dosen\'t Exist';
}

/**
 * EXERCISES
1.1 Suppose you have a sorted list of 128 names, and you’re searching
through it using binary search. What’s the maximum number of
steps it would take?

1.2 Suppose you double the size of the list. What’s the maximum
number of steps now?
 */