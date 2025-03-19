class Solution {
  int lengthOfLastWord(String s) {
    var word = s.trim().split(' '); // split each word by a space
    return word.last.length; // return the last word
  }
}