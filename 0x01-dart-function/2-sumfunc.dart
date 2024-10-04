// Addition function
int add(int a, int b) {
  return (a + b);
}

// Subtaction function
int sub(int a, int b) {
  return (a - b);
}

// String output funtion for add and sub
String showFunc(int a, int b) {
  int sum = add(a, b);
  int remain = sub(a, b);
  return ('Add $a + $b = $sum\nSub $a + $b = $remain');
}