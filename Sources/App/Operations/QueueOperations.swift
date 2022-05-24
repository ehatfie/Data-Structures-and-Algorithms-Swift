//
//  QueueOperations.swift
//  
//
//  Created by Erik Hatfield on 5/24/22.
//

import Foundation
import Data_Structures_and_Algorithms

public protocol QueueOperations {
    func run()
    func enqueue(value: Int)
    func dequeue() -> Int?
}

class QueueOps {
    let queue: QueueI
    
    
    init(queue: QueueI) {
        self.queue = queue
    }
    
    func run() {
        print("circular queue ")
        var count = 15
        
        // fill circular queue
        if let circQueue = queue as? CircularQueueI {
            count = circQueue.maxSize
        }
        
        for i in 0...10 {
            queue.enqueue(value: i)
        }
        
        enqueue(value: 11)
        printData()
        dequeue()
        printData()
        dequeue()
        printData()
        enqueue(value: 12)
        printData()
    }
    
    func printData() {
        queue.printData()
    }
    
    func enqueue(value: Int) {
        
        queue.enqueue(value: value)
    }
    
    func dequeue() -> Int? {
        queue.dequeue()
    }
}
