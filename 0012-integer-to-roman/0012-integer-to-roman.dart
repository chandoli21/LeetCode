class Solution {
    String intToRoman(int num) {
    final Map<int, String> romanMap = {
        1000: 'M',
        900: 'CM',
        500: 'D',
        400: 'CD',
        100: 'C',
        90: 'XC',
        50: 'L',
        40: 'XL',
        10: 'X',
        9: 'IX',
        5: 'V',
        4: 'IV',
        1: 'I',
    };

    String result = '';
    
    for (final entry in romanMap.entries) {
        int value = entry.key;
        String symbol = entry.value;

        while (num >= value) {
        result += symbol;
        num -= value;
        }
    }

    return result;
    }
}

