//
//  queue.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation

public protocol QueueI {
    func enqueue(value: Int)
    func dequeue() -> Int?
    func peek() -> Int?
    func isEmpty() -> Bool
    func printData()
}

public protocol CircularQueueI: QueueI {
    var data: [Int?] { get set }
    var frontIndex: Int { get set }
    var rearIndex: Int { get set }
    var maxSize: Int { get set }
}

public protocol LLQueueI: QueueI {
    var front: Node? { get set }
    var rear: Node? { get set }
}

public protocol DEQueueI: QueueI {
    var front: Node2? { get set }
    var rear: Node2? { get set }
    
    func enqueue2(value: Int)
    func dequeue2(value: Int) -> Int?
    func peekRear() -> Int?
}