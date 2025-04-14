class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> magazineCount = {};

    for (var char in magazine.split('')) {
      magazineCount[char] = (magazineCount[char] ?? 0) + 1;
    }

    for (var char in ransomNote.split('')) {
      if (magazineCount[char] == null || magazineCount[char]! == 0) {
        return false; 
      }
      magazineCount[char] = magazineCount[char]! - 1;
    }

    return true;
  }
}
