//
//  BSTOperations.swift
//  
//
//  Created by Erik Hatfield on 5/30/22.
//

import Foundation
import Data_Structures_and_Algorithms



class BSTOps: BSTOperations {
    func createBST() -> BST {
        let tree = BST()
        tree.randomize(count: 10, maxValue: 20)
        return BST()
    }
    
    func insert(value: Int, tree: BST) -> BST {
        tree.insert(value: value)
        tree.printTree()
        return tree
    }
    
    func insert(values: [Int], tree: BST) -> BST {
        for value in values[...] {
            tree.insert(value: value)
        }
        
        let depth = tree.getLength()
        
        return tree
    }
    
}
