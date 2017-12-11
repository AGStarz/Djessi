//
//  GCDQueue.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// GCD wrapper for `DispatchQueue`'s.
public class GCDQueue: Queue {
    
    /// Dispatch style.
    ///
    /// - async: Asynchronous style. Specified queue will be called as `queue.async { ... }`
    /// - sync: Synchronous style. Specified queue will be called as `queue.sync { ... }`
    public enum DispatchStyle {
        case async, sync
    }
    
    /// Associated `DispatchQueue`.
    private let queue: DispatchQueue
    
    /// Selected dispatch style.
    private let style: DispatchStyle
    
    /// Init GCD wrapper with custom `DispatchQueue` & `DispatchStyle`.
    ///
    /// - Parameters:
    ///   - queue: Concrete `DispatchQueue` to execute block's.
    ///   - style: Dispatch style.
    public init(queue q: DispatchQueue = .main, style s: DispatchStyle = .async) {
        queue = q
        style = s
    }
    
    /// Execution function on specified `DispatchQueue` with selected `DispatchStyle`.
    ///
    /// - Parameter block: Block to execute.
    public func execute(block: @escaping () -> Swift.Void) {
        switch style {
        case .async:
            queue.async {
                block()
            }
        case .sync:
            queue.sync {
                block()
            }
        }
    }
}

extension GCDQueue {
    
    /// Predefined async main `DispatchQueue`.
    public static let asyncMain: GCDQueue = GCDQueue()
    
    /// Predefined sync main `DispatchQueue`.
    public static let syncMain: GCDQueue = GCDQueue(style: .async)
}
