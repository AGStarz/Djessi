//
//  DistinctUntilChangedConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define mechanism to avoid following repeated values.
///
/// You can use `DistinctUntilChangedConditionObservable` only by calling `distinctUntilChanged` property defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).distinctUntilChanged
///
public class DistinctUntilChangedConditionObservable<O: Observable>: Observable where O.Value: Equatable {
    
    /// Observing value type
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// Previous observed value if exists.
    private var lastKnownValue: Value?
    
    /// Create new observable with distinct support.
    ///
    /// - Parameter observable: Observable whose changes will be distincted.
    init(observable: O) {
        source = observable
    }
    
    /// Start observe changes. Block will be called if new value not equal to previously observed value.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            defer { self.lastKnownValue = value }
            
            guard self.lastKnownValue != value else { return }
                
            onNext(value)
        }
    }
}

extension Observable where Value: Equatable {
    
    /// Add distinct mechanism for followed repeated values for current observable. New observable will be fired if new value not equal to previously observed value.
    public var distinctUntilChanged: DistinctUntilChangedConditionObservable<Self> {
        return DistinctUntilChangedConditionObservable(observable: self)
    }
}
