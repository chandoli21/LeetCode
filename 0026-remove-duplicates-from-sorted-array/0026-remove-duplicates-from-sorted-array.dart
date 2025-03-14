class Solution {
    int removeDuplicates(List<int> nums) {
        if (nums.isEmpty) return 0;

        int curr = 1;

        for (int i = 1; i < nums.length; i++) {
            if (nums[i] != nums[curr - 1]) {
                nums[curr] = nums[i];
                curr++;
            }
        }

        return curr;
    }
}