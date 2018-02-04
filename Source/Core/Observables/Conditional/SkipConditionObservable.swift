//
//  SkipConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define skipping rule for observed values by specified count.
///
/// You can use `SkipConditionObservable` only by calling `skip` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).skip(2)
///
public class SkipConditionObservable<O: Observable>: Observable {
    
    /// Observing value type.
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// Counter which stored number of non-skipped values. You dont receive any observing changes while this value greater than `0`. This value cannot be less than `0`.
    private var counter: Int
    
    /// Create new skippable observable.
    ///
    /// - Parameters:
    ///   - observable: Observable whose changes will be skipped.
    ///   - count: Number of values which will be skipped.
    init(observable: O, count: Int) {
        source = observable
        counter = count
    }
    
    /// Start observe changes. Block will be called when skip counter will reach `0`.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            defer { self.counter = max(0, self.counter - 1) }
            
            guard self.counter == 0 else { return }
            
            onNext(value)
        }
    }
}

extension Observable {
    
    /// Add skipping rule for current observable with specified number of 'skips'. New observable will not be fired until skip counter not reach `0`.
    ///
    /// - Parameter count: Number of skips before observe changes will be started.
    /// - Returns: Wrapped current observable with skipping support.
    public func skip(_ count: Int) -> SkipConditionObservable<Self> {
        return SkipConditionObservable(observable: self, count: count)
    }
}
