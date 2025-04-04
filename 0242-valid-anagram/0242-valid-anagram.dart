class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<int> charCount = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      charCount[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      charCount[t.codeUnitAt(i) - 'a'.codeUnitAt(0)]--;
    }

    for (int count in charCount) {
      if (count != 0) return false;
    }

    return true;
  }
}
