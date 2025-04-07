class Solution {
  void moveZeroes(List<int> nums) {
    int lastNonZeroFoundAt = 0;

    // Move non-zeros to the front
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[lastNonZeroFoundAt] = nums[i];
        lastNonZeroFoundAt++;
      }
    }

    // Fill remaining positions with zeros
    for (int i = lastNonZeroFoundAt; i < nums.length; i++) {
      nums[i] = 0;
    }
  }
}
