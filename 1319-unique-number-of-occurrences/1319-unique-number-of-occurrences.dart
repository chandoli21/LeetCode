class Solution {
    bool uniqueOccurrences(List<int> arr) {
    Map<int, int> countMap = {};

    // Count occurrences
    for (int num in arr) {
        countMap[num] = (countMap[num] ?? 0) + 1;
    }

    // Check if all occurrence counts are unique
    Set<int> occurrences = {};

    for (int count in countMap.values) {
        if (occurrences.contains(count)) {
        return false;
        }
        occurrences.add(count);
    }

    return true;
    }
}
