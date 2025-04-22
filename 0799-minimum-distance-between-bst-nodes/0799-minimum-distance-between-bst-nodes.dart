class Solution {
  int minDiff = double.maxFinite.toInt(); // Initialize with maximum possible value
  TreeNode? prev; // Keep track of previously visited node

  int minDiffInBST(TreeNode? root) {
    // Do inorder traversal to get values in ascending order
    inorderTraversal(root);
    return minDiff;
  }

  void inorderTraversal(TreeNode? node) {
    if (node == null) return;

    // Traverse left subtree
    inorderTraversal(node.left);

    // Process current node
    if (prev != null) {
      minDiff = min(minDiff, node.val - prev!.val);
    }
    prev = node;

    // Traverse right subtree
    inorderTraversal(node.right);
  }
}

// Helper function to find minimum of two numbers
int min(int a, int b) => a < b ? a : b;