// Function to check postive, negative, or zero

void main(List<String> args) {
  int num = int.parse(args[0]);
  if (num < 0) {
    print('$num is negative');
  }
  else if (num > 0) {
    print('$num is positive');
  }
  else {
    print('$num is zero');
  }
}