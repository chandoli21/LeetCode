class Solution {
  int lengthOfLongestSubstring(String s) {
    Set<String> seen = {};
    int left = 0;
    int maxLength = 0;

    for (int right = 0; right < s.length; right++) {
      while (seen.contains(s[right])) {
        seen.remove(s[left]);
        left++;
      }
      seen.add(s[right]);
      maxLength = maxLength > (right - left + 1) ? maxLength : (right - left + 1);
    }

    return maxLength;
  }
}
