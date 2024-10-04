// Return if String is a Palindrome or not
bool isPalindrome(String s) {
  int a = 0;
  int b = s.length - 1;

  if (s.length < 3) {
    return (false);
  }

  for (; a < b; a++, b--) {
    if (s[a] != s[b]) {
      return (false);
    }
  }
  return (true);
}