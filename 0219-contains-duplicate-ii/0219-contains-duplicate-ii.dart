class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    Map<int, int> indexMap = {};
    
    for (int i = 0; i < nums.length; i++) {
      if (indexMap.containsKey(nums[i]) && (i - indexMap[nums[i]]!) <= k) {
        return true;
      }
      indexMap[nums[i]] = i;
    }
    
    return false;
  }
}