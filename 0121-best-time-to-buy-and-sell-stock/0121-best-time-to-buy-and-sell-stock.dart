class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = 1 << 30; // large value
    int maxProfit = 0;

    for (int price in prices) {
        minPrice = price < minPrice ? price : minPrice;
        maxProfit = (price - minPrice) > maxProfit ? (price - minPrice): maxProfit;
    }
    return maxProfit;
  }
}