// Challenge 1
// Write failing test cases for given 3 challenges

// Challenge 2
// Sort by Digit Length, then By Number Itself
// Write a function that sorts an array of integers by their digit length in
// descending order, then settles ties by sorting numbers with the same digit length in ascending order.
List digitLength(List<int> numbers) {
  numbers.sort(comparator1);
  print(numbers);

  return numbers;
}

int comparator1(int a, int b) {
  if (a.toString().length < b.toString().length) return 1;
  if (a.toString().length == b.toString().length) {
    if (a < b) return -1;

    if (a > b) return 1;
  } else {
    return 0;
  }
  if (a.toString().length > b.toString().length) return -1;
}

// Challenge 3
// IPv4 Validation
// Create a function that takes a string (IPv4 address in standard dot-decimal
// format) and returns true if the IP is valid or false if it's not.
// isValidIP("1.2.3.4") ➞ true
// isValidIP("1.2.3") ➞ false
// isValidIP("123.045.067.089") ➞ false
bool isValidIP(String ipAddress) {
  List<String> values = ipAddress.split('.');
  print(values);
  if (values.length != 4) {
    return false;
  }
  for (String x in values) {
    print(x);
    if (x.length > 1 && x[0] == '0') {
      return false;
    }
  }
  return true;
}

// Challenge 4
// Double Character Swap
// Write a function to replace all instances of character c1 with character c2 and vice versa.
// Examples
// doubleSwap( "aabbccc", "a", "b") ➞ "bbaaccc"

String characterSwap(String word, String char1, String char2) {
  List splitted = word.split('');
  print(splitted);
  for (int i = 0; i < splitted.length; i++) {
    if (splitted[i] == char2) {
      splitted[i] = char1;
    } else if (splitted[i] == char1) {
      splitted[i] = char2;
    }
  }
  print(splitted);
  return splitted.join();
}

main() {
  digitLength([9, 44, 1, 22]);
  print(characterSwap("aabbccc", "a", "b"));
  print(isValidIP("123.045.067.089"));
}
