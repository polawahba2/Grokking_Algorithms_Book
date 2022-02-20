void main() {
  List l = [3, 5, 2, 1, 4, 6,22,12,2,4,1];
  print(quickSort(l));
}

List quickSort(List arr) {
  if (arr.length < 2)
    return arr; // this mean that the array empty or have only one element
  List lessElements = [], greaterElements = [];
  int pivot = arr[0];
  arr.remove(pivot);
  arr.forEach((element) {
    if (element <= pivot) {
      lessElements.add(element);
    } else {
      greaterElements.add(element);
    }
  });

  return quickSort(lessElements) + [pivot] + quickSort(greaterElements);
}