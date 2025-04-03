class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];
    if (nums.isEmpty) return result;

    int start = nums[0];

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1] + 1) {
        result.add(start == nums[i - 1] ? "$start" : "$start->${nums[i - 1]}");
        start = nums[i];
      }
    }

    // Add the last range
    result.add(start == nums.last ? "$start" : "$start->${nums.last}");

    return result;
  }
}
