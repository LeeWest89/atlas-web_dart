//  Returns the longest non-repeating substring
String longestUniqueSubstring(String str) {
  int i = str.length;
  int right = 0;
  int left = 0;
  Map<String, int> indexMap = {};
  int maxLength = 0;
  String longest = "";

  for (; right < i; right++) {
    String currentCharacter = str[right];
    if (indexMap.containsKey(currentCharacter) && indexMap[currentCharacter]! >= left) {
        left = indexMap[currentCharacter]! + 1;
    }

    indexMap[currentCharacter] = right;

    int currentLength = right - left + 1;
    if (currentLength > maxLength) {
      maxLength = currentLength;
      longest = str.substring(left, right + 1);
    }
  }

  return longest;
}