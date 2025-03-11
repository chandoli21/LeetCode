class Solution {
    List<int> twoSum(List<int> nums, int target) {
        Map<int, int> map = {};

        for (int i = 0; i < nums.length; i++) { //O(n)
                int diff = target - nums[i];
                if (map.containsKey(diff)) //O(1)
                return [map[diff]!, i]; 
            map[nums[i]] = i; //O(1)
        }

        throw Exception ("No solution.");
    }

    void main() {
        print(twoSum([2, 7, 11, 15], 9));
        print(twoSum([3, 2, 4], 6));
        print(twoSum([3, 3], 6));
    }

}
