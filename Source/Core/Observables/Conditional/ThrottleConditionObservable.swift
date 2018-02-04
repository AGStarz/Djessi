//
//  ThrottleConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define throttling mechanism for observed values.
///
/// You can use `ThrottleConditionObservable` only by calling `throttle` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).throttle(interval: 0.3, queue: DispatchQueue.main)
///
public class ThrottleConditionObservable<O: Observable>: Observable {
    
    /// Throttle mechanism based on `DispatchWorkItem`.
    class ThrottleHandler {
        
        /// Last known work item.
        private(set) var lastWorkItem: DispatchWorkItem?
        
        /// Specified queue for throttling.
        let queue: GCDQueue
        
        /// Init new throttling handler.
        ///
        /// - Parameter q: Specified queue which will be used to invoking `DispatchWorkItem`.
        init(queue q: GCDQueue) {
            queue = q
        }
        
        /// Throttling new block. If any previous block exists & not yet trigered it will be cancelled & replaced by new one.
        ///
        /// - Parameter block: Block for throttling.
        func throttle(block: @escaping () -> Void) {
            let workItem = DispatchWorkItem {
                defer { self.lastWorkItem = nil }
                
                block()
            }
            
            lastWorkItem?.cancel()
            lastWorkItem = workItem
            
            queue.execute(workItem: workItem)
        }
    }
    
    /// /// Observing value type.
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// Throttle mechanism based on `DispatchWorkItem`.
    private let throttler: ThrottleHandler
    
    /// Create new observable with throttle support.
    ///
    /// - Parameters:
    ///   - observable: Observable whose changes will be throttled.
    ///   - queue: Throttling queue.
    init(observable: O, queue: GCDQueue) {
        source = observable
        throttler = ThrottleHandler(queue: queue)
    }
    
    /// Start observe changes. Block will be called if no value changes occured in specified throttling time.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            self.throttler.throttle {
                onNext(value)
            }
        }
    }
}

extension Observable {
    
    /// Add throttling condition for current observable with specified time interval & dispatch queue. Value changes occured if the followig observed value occured in interval greater than specified one.
    ///
    /// Throttling based on `DispatchWorkItem` which means that you should provide `DispatchQueue` which will be used for throttling by `DispatchWorkItem`. By default, used `DispatchQueue.main`.
    ///
    /// - Parameters:
    ///   - interval: Time interval for throttling (in seconds).
    ///   - queue: Specified queue for throttling.
    /// - Returns: Wrapped current observable with throttling support.
    public func throttle(interval: TimeInterval, queue: DispatchQueue = .main) -> ThrottleConditionObservable<Self> {
        return ThrottleConditionObservable(observable: self, queue: GCDQueue(queue: queue, style: .asyncAfter(delay: interval)))
    }
}
