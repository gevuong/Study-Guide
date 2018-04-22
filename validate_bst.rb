# Given a binary tree, determine if it is a valid binary search tree (BST).
#
# Assume a BST is defined as follows:
#
# The left subtree of a node contains only nodes with keys less than the node's key.
# The right subtree of a node contains only nodes with keys greater than the node's key.
# Both the left and right subtrees must also be binary search trees.
# Example 1:
#
# Input:
#     2
#    / \
#   1   3
# Output: true
# Example 2:
#
#     5
#    / \
#   1   4
#      / \
#     3   6
# Output: false
# Explanation: The input is: [5,1,4,null,null,3,6]. The root node's value
#              is 5 but its right child's value is 4.


class BTNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left = nil
        @right = nil
    end
end

def is_valid_bst(root)
    # return true if root.nil? because bst only contains a root

    # for each root, I need to find min and max child node, assuming root has children

    # then compare root with min_value, and root with max_value
end
