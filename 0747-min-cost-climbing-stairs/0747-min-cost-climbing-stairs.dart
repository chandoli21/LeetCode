class Solution {
  int minCostClimbingStairs(List<int> cost) {
    final n = cost.length;
    
    List<int> dp = List.filled(n + 1, 0);

    for (int i = 2; i <= n; i++) {
        dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2]);
    }

    return dp[n];
  }
}

int min(int a, int b) => a < b ? a : b;