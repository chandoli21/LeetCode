class Solution {
  String reverseVowels(String s) {
    List<String> chars = s.split('');
    int left = 0, right = s.length - 1;
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};

    while (left < right) {
      while (left < right && !vowels.contains(chars[left])) {
        left++;
      }
      while (left < right && !vowels.contains(chars[right])) {
        right--;
      }

      // Swap 
      String temp = chars[left];
      chars[left] = chars[right];
      chars[right] = temp;

      left++;
      right--;
    }

    return chars.join('');
  }
}
