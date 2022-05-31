//
//  File.swift
//  
//
//  Created by Erik Hatfield on 5/30/22.
//

import Foundation


public class BST {
    public var root: BSTNode?
    
    public init() {
        self.root = nil
    }
    
    public func randomize(count: Int, maxValue: UInt) {
        var generator = SystemRandomNumberGenerator()
        var numberSet = Set<Int>()
        
        var result: (inserted: Bool, memberAfterInsert: Int)? = nil
        var value: Int = 0
        
        for _ in 0...count {
            while result?.inserted != true {
                value = Int(generator.next(upperBound: maxValue))
                result = numberSet.insert(value)
            }
            
            self.insert(value: value)
            result = nil
        }
        
        printTree()
    }
    public func insert(value: Int) {
        self.root = insert(value: value, node: self.root)
    }
    
    // breadth first search
    public func printTree() {
        guard let root = root else {
            print("empty tree")
            return
        }
        print(root.description)
        print("   \(root.value)")
        //printTree(node: root)
    }
    
    public func getLength() -> Int {
        let max = getLength(index: 0, node: self.root)
        
        return max
    }
    
    func getLength(index: Int, node: BSTNode?, _ description: String? = nil) -> Int {
        guard let node = node else {
            return index
        }
        
        let leftIndex = getLength(index: index, node: node.left)
        let rightIndex = getLength(index: index, node: node.right)
        
        return max(leftIndex, rightIndex) + 1
    }
    
    func printTree(node: BSTNode?) {
        guard let node = node else {
            return
        }
        
        guard node.left != nil || node.right != nil else {
            return
        }
        
        var string1 = " "
        var separator = ""
        
        if let left = node.left {
            separator += "  /"
            string1 += "\(left.value)"
        }
        string1 += " "
        if let right = node.right {
            separator += "\\"
            string1 += "\(right.value)"
        }
        print(separator)
        print(string1)
        
        printTree(node: node.left)
        printTree(node: node.right)
    }
    
    func insert(value: Int, node: BSTNode?) -> BSTNode {
        guard let node = node else {
            print("creating new node")
            let newNode = BSTNode(value: value)
            return newNode
        }
        
        if value < node.value {
            print("\(value) < \(node.value) inserting on left")
            node.left = insert(value: value, node: node.left)
        } else if value > node.value {
            print("\(value) > \(node.value) inserting on right")
            node.right = insert(value: value, node: node.right)
        }
        
        return node
    }
    
    public func remove(value: Int) {
        guard let root = root else {
            print("empty tree")
            return
        }
        
        remove(value: value, node: root)
    }
    
    public func remove(value: Int, node: BSTNode?) {
        guard let node = node else {
            return
        }
        
//        guard node.value != value else {
//
//        }
    }
}

extension BSTNode: CustomStringConvertible {

  public var description: String {
    diagram(for: self)
  }
  
  private func diagram(for node: BSTNode?,
                       _ top: String = "",
                       _ root: String = "",
                       _ bottom: String = "") -> String {
    guard let node = node else {
      return root + "nil\n"
    }
    if node.left == nil && node.right == nil {
      return root + "\(node.value)\n"
    }
    return diagram(for: node.right,
                   top + " ", top + "┌──", top + "│ ")
         + root + "\(node.value)\n"
         + diagram(for: node.left,
                   bottom + "│ ", bottom + "└──", bottom + " ")
  }
}
