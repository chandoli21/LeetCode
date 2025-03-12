class Solution {
  int romanToInt(String s) {
    Map<String, int> romanToInt = {
        'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000
    };

    int total = 0;

    for (int i = 0; i < s.length; i++) {
        int curr = romanToInt[s[i]]!;
        int next = i + 1 < s.length ? romanToInt[s[i + 1]]! : 0;

        if (curr < next) 
            total -= curr;
        else
            total += curr;
    }

    return total;
  }
}