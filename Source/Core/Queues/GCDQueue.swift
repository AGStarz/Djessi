//
//  GCDQueue.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Queue` protocol and represents `DispatchQueue` wrapper.
///
/// `GCDQueue` already have wrapper's for `DispatchQueue.main` queue with sync & async behaviour and accessible through static properties via `GCDQueue.asyncMain` or `GCDQueue.syncMain`
public class GCDQueue: Queue {
    
    /// Dispatch style.
    ///
    /// - async: Asynchronous style, specified queue will be called as
    ///
    ///         queue.async(execute: block)
    ///
    /// - async(delay: TimeInterval): Asynchronous style with selected delay (in seconds), specified queue will be called as
    ///
    ///         queue.asyncAfter(deadline: .now() + delay, execute: block)
    ///
    /// - sync: Synchronous style, specified queue will be called as
    ///
    ///         queue.sync(execute: block)
    ///
    public enum DispatchStyle {
        case async
        case asyncAfter(delay: TimeInterval)
        case sync
    }
    
    /// Associated `DispatchQueue`.
    private let queue: DispatchQueue
    
    /// Selected dispatch style.
    private let style: DispatchStyle
    
    /// Init GCD wrapper with custom `DispatchQueue` & `DispatchStyle`.
    ///
    /// - Parameters:
    ///   - queue: Concrete `DispatchQueue` to execute block's. Default value is `DispatchQueue.main`.
    ///   - style: Dispatch style. Default value is `DispatchStyle.async`.
    public init(queue q: DispatchQueue = .main, style s: DispatchStyle = .async) {
        queue = q
        style = s
    }
    
    /// Execute block on specified `DispatchQueue` with selected `DispatchStyle`.
    ///
    /// - Parameter block: Block to execute.
    public func execute(block: @escaping () -> Swift.Void) {
        switch style {
        case .sync:
            queue.sync(execute: block)
        case .async:
            queue.async(execute: block)
        case .asyncAfter(let delay):
            queue.asyncAfter(deadline: .now() + delay, execute: block)
        }
    }
    
    /// Execute work item on specified `DispatchQueue` with selected `DispatchStyle`.
    ///
    /// - Parameter workItem: Work item to execute.
    public func execute(workItem: DispatchWorkItem) {
        switch style {
        case .sync:
            queue.sync(execute: workItem)
        case .async:
            queue.async(execute: workItem)
        case .asyncAfter(let delay):
            queue.asyncAfter(deadline: .now() + delay, execute: workItem)
        }
    }
}

extension GCDQueue {
    
    /// Predefined async main `DispatchQueue` with no delay.
    public static let asyncMain: GCDQueue = GCDQueue()
    
    /// Predefined sync main `DispatchQueue`.
    public static let syncMain: GCDQueue = GCDQueue(style: .sync)
}
