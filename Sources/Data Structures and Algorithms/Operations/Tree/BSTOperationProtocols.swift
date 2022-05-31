//
//  BSTOperationProtocols.swift
//  
//
//  Created by Erik Hatfield on 5/30/22.
//

import Foundation

public protocol BSTOperations {
    func createBST() -> BST
    func insert(value: Int, tree: BST) -> BST
}
