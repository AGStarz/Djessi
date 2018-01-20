//
//  Queue.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Base protocol for multi-thread support.
public protocol Queue {
    
    /// Execution function on specifed thread.
    ///
    /// - Parameter block: Block to execute.
    func execute(block: @escaping () -> Swift.Void)
}
