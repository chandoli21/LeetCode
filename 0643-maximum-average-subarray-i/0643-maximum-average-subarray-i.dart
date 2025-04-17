class Solution {
  double findMaxAverage(List<int> nums, int k) {
    int n = nums.length;
    double currentSum = 0;

    // Compute initial window sum
    for (int i = 0; i < k; i++) {
      currentSum += nums[i];
    }

    double maxSum = currentSum;

    // Slide the window
    for (int i = k; i < n; i++) {
      currentSum = currentSum - nums[i - k] + nums[i];
      if (currentSum > maxSum) {
        maxSum = currentSum;
      }
    }

    return maxSum / k;
  }
}
