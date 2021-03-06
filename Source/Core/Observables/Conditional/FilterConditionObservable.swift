//
//  FilterConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 13.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define filtration rule for observed values.
///
/// You can use `FilterConditionObservable` only by calling `filter` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).filter({ $0?.count ?? 0 > 3 })
///
public class FilterConditionObservable<O: Observable>: Observable {
    
    /// Observing value type
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// Condition for observed values.
    private let condition: (O.Value) -> Bool
    
    /// Create new filter condition supported observable.
    ///
    /// - Parameters:
    ///   - observable: Source observable whose changes should be validated by provided condition.
    ///   - condition: Condition that observed values should satisfy.
    init(observable: O, condition c: @escaping (O.Value) -> Bool) {
        source = observable
        condition = c
    }
    
    /// Start observe changes. Block will be called when value satisfy to condition.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            guard self.condition(value) else { return }
            
            onNext(value)
        }
    }
}

extension Observable {
    
    /// Add filter rule condition for current observable. New observable will be fired if value satisfy to `condition`.
    ///
    /// - Parameter condition: Condition that observed values should satisfy.
    /// - Returns: Wrapped current observable with condition support.
    public func filter(_ condition: @escaping (Value) -> Bool) -> FilterConditionObservable<Self> {
        return FilterConditionObservable(observable: self, condition: condition)
    }
}
