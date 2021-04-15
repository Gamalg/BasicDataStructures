/*
 https://stepik.org/lesson/41234/step/2?unit=19818
 
 Высота дерева
 Вычислить высоту данного дерева.
 */

import Foundation

public class TreeNode<T> {
    public var childer: [TreeNode]?
    public var parent: TreeNode?
    public var value: T?
    public var level: Int?
}

public class Tree<T> {
    public var root: TreeNode<T>?
    public var height: Int?
}


public class Task2 {
    
    public init() {}
    
    /// input [9, 7, 5, 5, 2, 9, 9, 9, 2, -1]
    public func heightOfTree1(input: [Int]) {
        var nodes = [[Int]]()
        
        guard let root = input.firstIndex(of: -1) else {
            print(0)
            return
        }
        
        if input.count == 1 {
            print(1)
            return
        }
        
        nodes.append([root])
        
        var rootNodes = [root]
        while let children = childerOfTreeNodes(input: input, rootChildren: rootNodes) {
            nodes.append(children)
            rootNodes = children
        }
        
        print(nodes.count)
    }
    
    private func childerOfTreeNodes(input: [Int], rootChildren: [Int]) -> [Int]? {
        var nodes: [Int] = []
        for (index, value) in input.enumerated() {
            if rootChildren.contains(value) {
                nodes.append(index)
            }
        }
        
        if nodes.isEmpty {
            return nil
        }
        
        return nodes
    }
}
