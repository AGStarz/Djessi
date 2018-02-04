//
//  TakeConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define taking specified number of observed values.
///
/// You can use `TakeConditionObservable` only by calling `take` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).take(2)
///
public class TakeConditionObservable<O: Observable>: Observable {
    
    /// Observing value type.
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// Counter which stored number of non-taked values. You receive value changes while this value greater than `0`. This value cannot be less than `0`.
    private var counter: Int
    
    /// Create new taking observable.
    ///
    /// - Parameters:
    ///   - observable: Observable whose changes will be took.
    ///   - count: Number of values which will be taken.
    init(observable: O, count: Int) {
        source = observable
        counter = count
    }
    
    /// Start observe changes. Block will be calling while counter greater than `0`.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            defer { self.counter = max(0, self.counter - 1) }
            
            guard self.counter > 0 else { return }
            
            onNext(value)
        }
    }
}

extension Observable {
    
    /// Add taking rule for current observable with specified number of 'takes'. New observable will be firing until taking counter greater than `0`.
    ///
    /// - Parameter count: Number of value changes which can be observed.
    /// - Returns: Wrapped current observable with taking support.
    public func take(_ count: Int) -> TakeConditionObservable<Self> {
        return TakeConditionObservable(observable: self, count: count)
    }
}
