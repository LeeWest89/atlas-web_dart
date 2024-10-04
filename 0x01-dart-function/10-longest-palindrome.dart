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

// Function that accepts one argument String and returns the longest palindrome substring.
String longestPalindrome(String s) {
  if (s.length < 3) {
    return ("none");
  }

  String longest = "none";
  int maxLength = 0;
  int left = 0;

  for (; left < s.length; left++) {
    for (int right = left + 1; right < s.length + 1; right++) {
      String substring = s.substring(left, right);
      if (isPalindrome(substring)) {
        if (substring.length > maxLength) {
          maxLength = substring.length;
          longest = substring;
        }
        if (maxLength == s.length) {
          return (longest);
        }
      }
    }
  }
  return (longest);
}