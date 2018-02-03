//
//  ThrottleConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// <#Description#>
public class ThrottleConditionObservable<O: Observable>: Observable {
    
    /// <#Description#>
    class ThrottleHandler {
        
        /// <#Description#>
        private(set) var lastWorkItem: DispatchWorkItem?
        
        /// <#Description#>
        let queue: GCDQueue
        
        /// <#Description#>
        ///
        /// - Parameter q: <#q description#>
        init(queue q: GCDQueue) {
            queue = q
        }
        
        /// <#Description#>
        ///
        /// - Parameter block: <#block description#>
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
    
    /// <#Description#>
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// <#Description#>
    private let throttler: ThrottleHandler
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - observable: <#observable description#>
    ///   - queue: <#queue description#>
    init(observable: O, queue: GCDQueue) {
        source = observable
        throttler = ThrottleHandler(queue: queue)
    }
    
    /// <#Description#>
    ///
    /// - Parameter onNext: <#onNext description#>
    /// - Returns: <#return value description#>
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            self.throttler.throttle {
                onNext(value)
            }
        }
    }
}

extension Observable {
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - interval: <#interval description#>
    ///   - queue: <#queue description#>
    /// - Returns: <#return value description#>
    public func throttle(interval: TimeInterval, queue: DispatchQueue = .main) -> ThrottleConditionObservable<Self> {
        return ThrottleConditionObservable(observable: self, queue: GCDQueue(queue: queue, style: .asyncAfter(delay: interval)))
    }
}
