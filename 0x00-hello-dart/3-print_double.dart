// Function to print the doubles stored in the variable number with a precision of 2 digits

void main() {
  var n = 3.14159265359;
  // this is the easiest way I found, could as use round()
  print('Double: ${n.toStringAsFixed(2)}\n');
}
