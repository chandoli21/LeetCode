class Solution {
    bool isIsomorphic(String s, String t) {
        if (s.length != t.length) return false;

        Map<String, String> sToT = {};
        Map<String, String> tToS = {};

        for (int i = 0; i < s.length; i++) {
            String charS = s[i];
            String charT = t[i];

            if (sToT.containsKey(charS) && sToT[charS] != charT)
                return false;

            if (tToS.containsKey(charT) && tToS[charT] != charS)
                return false;

            sToT[charS] = charT;
            tToS[charT] = charS;
        }
        return true;
    }
}