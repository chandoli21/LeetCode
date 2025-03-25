class Solution {
    bool isPalindrome(String s) {
        int left = 0, right = s.length - 1;

        while (left < right) {
            // Check from the left to right
            while (left < right && !s[left].contains(RegExp(r'[a-zA-Z0-9]'))) {
            left++;
            }
            // Check from the right to left
            while (left < right && !s[right].contains(RegExp(r'[a-zA-Z0-9]'))) {
            right--;
            }

            // Character comparison - not case sensitive
            if (s[left].toLowerCase() != s[right].toLowerCase()) {
            return false;
            }

            left++;
            right--;
        }
        return true;
    }
}