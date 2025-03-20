class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int i = m - 1, j = n - 1, k = m + n - 1;

    // Merge nums2 into nums1 from the end
    while (i >= 0 && j >= 0) {
        if (nums1[i] > nums2[j]) {
            nums1[k--] = nums1[i--];
        }
        else {
            nums1[k--] = nums2[j--];
        }
    }

    // Copy the rest from the nums2
    while (j >= 0) {
        nums1[k--] = nums2[j--];
    }
  }
}