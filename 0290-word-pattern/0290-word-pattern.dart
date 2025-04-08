class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(' ');
    if (pattern.length != words.length) return false;

    Map<String, String> charToWord = {};
    Map<String, String> wordToChar = {};

    for (int i = 0; i < pattern.length; i++) {
      String c = pattern[i];
      String word = words[i];

      if (charToWord.containsKey(c)) {
        if (charToWord[c] != word) return false;
      } else {
        charToWord[c] = word;
      }

      if (wordToChar.containsKey(word)) {
        if (wordToChar[word] != c) return false;
      } else {
        wordToChar[word] = c;
      }
    }

    return true;
  }
}
