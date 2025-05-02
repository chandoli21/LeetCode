class Solution {
    int largestAltitude(List<int> gain) {
    int currentAltitude = 0;
    int maxAltitude = 0;

    for (int g in gain) {
        currentAltitude += g;
        if (currentAltitude > maxAltitude) {
        maxAltitude = currentAltitude;
        }
    }

    return maxAltitude;
    }
}