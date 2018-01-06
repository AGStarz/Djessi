//
//  Queue.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Core protocol for observables to support multi-threads.
public protocol Queue {
    
    /// Execution function on specifed thread.
    ///
    /// - Parameter block: Block to execute.
    func execute(block: @escaping () -> Swift.Void)
}
