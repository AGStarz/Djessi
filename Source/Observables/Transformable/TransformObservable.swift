//
//  TransformObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol. Define transformations for observables.
public class TransformObservable<To, K: Observable>: Observable {
    
    /// Observing value type
    public typealias Value = To
    
    /// Associated observable whose changes handle current observable.
    private let associatedObservable: K
    
    /// Transform block for observed values.
    private let transform: (K.Value) -> To
    
    /// Create new transformations supported observable.
    ///
    /// - Parameters:
    ///   - source: Source observable whose changes should be transformed by provided transform block.
    ///   - transform: Transformation block for each observed value of source observable.
    init(source: K, transform t: @escaping (K.Value) -> To) {
        associatedObservable = source
        transform = t
    }
    
    /// Start observe changes. Block will be called with transformed values.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return associatedObservable.observe { (value) in
            onNext(self.transform(value))
        }
    }
}

extension Observable {
    
    /// Add transformation for current observable. New observable will be firing with transformed values.
    ///
    /// - Parameter transform: Transformation block.
    /// - Returns: Wrapped current observable with transformation support.
    public func map<To>(transform: @escaping (Value) -> To) -> TransformObservable<To, Self> {
        return TransformObservable<To, Self>(source: self, transform: transform)
    }
}
