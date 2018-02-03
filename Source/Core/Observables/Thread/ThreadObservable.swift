//
//  ThreadObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define multi-threading ability for observables and can be used only with any other `KeyPathObservable`.
///
/// You can use `ThreadObservable` only by calling `deliver` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let queue = GCDQueue.asyncMain // or your implementation of Queue
///     let observable = label.observable(at: \UILabel.text).deliver(on: queue)
///
public class ThreadObservable<O: Observable>: Observable {
    
    /// Observing value type
    public typealias Value = O.Value
    
    /// Associated observable whose changes handle current observable.
    private let associatedObservable: O
    
    /// Queue which will be used for callback's
    private let queue: Queue
    
    /// Create new observable with thread support on specified queue.
    ///
    /// - Parameters:
    ///   - source: Source observable whose changes should be passed to specified queue.
    ///   - queue: Queue for callbacks.
    init(source: O, queue q: Queue) {
        associatedObservable = source
        queue = q
    }
    
    /// Start observe changes. Value changes will be called on associated `queue`.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return associatedObservable.observe { (value) in
            self.queue.execute {
                onNext(value)
            }
        }
    }
}

extension Observable {
    
    /// Add thread support on specified `Queue` for current observable.
    ///
    /// - Parameter queue: Queue for callback's.
    /// - Returns: Wrapped current observable with thread support.
    public func deliver(on queue: Queue) -> ThreadObservable<Self> {
        return ThreadObservable(source: self, queue: queue)
    }
    
    /// Add thread support on specified `DispatchQueue` for current observable.
    ///
    /// - Parameters:
    ///   - queue: Queue for callback's.
    ///   - style: Callback dispatch style.
    /// - Returns: Wrapped current observable with thread support.
    public func deliver(on queue: DispatchQueue, style: GCDQueue.DispatchStyle = .async) -> ThreadObservable<Self> {
        let dispatchQueue = GCDQueue(queue: queue, style: style)
        
        return ThreadObservable(source: self, queue: dispatchQueue)
    }
}
