class Solution {
  int romanToInt(String s) {
    // 로마 숫자 문자와 해당 값들을 매핑하는 맵을 생성
    Map<String, int> romanToIntMap = {
      'I': 1, 
      'V': 5, 
      'X': 10, 
      'L': 50, 
      'C': 100, 
      'D': 500, 
      'M': 1000
    };
    
    int total = 0;
    
    // 문자열을 순회하면서 로마 숫자 값을 계산
    for (int i = 0; i < s.length; i++) {
      int currentVal = romanToIntMap[s[i]]!;
      int nextVal = i + 1 < s.length ? romanToIntMap[s[i + 1]]! : 0;
      
      // 현재 값이 다음 값보다 작으면 뺄셈, 그렇지 않으면 더함
      if (currentVal < nextVal) {
        total -= currentVal;
      } else {
        total += currentVal;
      }
    }
    
    return total;
  }
}