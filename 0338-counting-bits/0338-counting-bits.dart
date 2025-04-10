class Solution {
  List<int> countBits(int n) {
    List<int> ans = List.filled(n + 1, 0);

    for (int i = 1; i <= n; i++) {
      ans[i] = ans[i >> 1] + (i & 1);
    }

    return ans;
  }
}
