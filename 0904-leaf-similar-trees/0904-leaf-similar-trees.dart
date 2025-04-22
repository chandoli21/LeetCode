class Solution {
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    // Get leaf sequences for both trees
    List<int> leaves1 = [];
    List<int> leaves2 = [];

    // Helper function to get leaf values
    void getLeafValues(TreeNode? node, List<int> leaves) {
      if (node == null) return;

      // If it's a leaf node (no children), add its value
      if (node.left == null && node.right == null) {
        leaves.add(node.val);
        return;
      }

      // Recursively process left and right subtrees
      getLeafValues(node.left, leaves);
      getLeafValues(node.right, leaves);
    }

    // Get leaf sequences for both trees
    getLeafValues(root1, leaves1);
    getLeafValues(root2, leaves2);

    // Compare the sequences
    if (leaves1.length != leaves2.length) return false;

    for (int i = 0; i < leaves1.length; i++) {
      if (leaves1[i] != leaves2[i]) return false;
    }

    return true;
  }
}