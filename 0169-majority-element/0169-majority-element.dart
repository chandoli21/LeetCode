class Solution {
    int majorityElement(List<int> nums) {
    int count = 0;
    int candidate = 0;

    for (int num in nums) {
        if (count == 0) {
        candidate = num;
        }
        count += (num == candidate) ? 1 : -1;
    }

    return candidate;
    }

    void main() {
        print(majorityElement([3, 2, 3]));
        print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
    }

}