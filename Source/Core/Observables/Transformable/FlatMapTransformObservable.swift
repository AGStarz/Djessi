//
//  FlatMapTransformObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 13.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define flat mapping transformations for observables.
///
/// You can use `FlatMapTransformObservable` only by calling `flatMap` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).flatMap(transform: { $0 })
///
public class FlatMapTransformObservable<To, K: Observable>: Observable {
    
    /// Observing value type
    public typealias Value = To
    
    /// Associated observable whose changes handle current observable.
    private let associatedObservable: K
    
    /// Transform block for observed values.
    private let transform: (K.Value) -> To?
    
    /// Create new flat map transformation support for observable.
    ///
    /// - Parameters:
    ///   - source: Source observable whose changes should be transformed by provided transform block.
    ///   - transform: Transformation block for each observed value of source observable.
    init(source: K, transform t: @escaping (K.Value) -> To?) {
        associatedObservable = source
        transform = t
    }
    
    /// Start observe changes. Block will be called with transformed values.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return associatedObservable.observe { (value) in
            guard let value = self.transform(value) else { return }
            
            onNext(value)
        }
    }
}

extension Observable {
    
    /// Add flat mapping transformation for current observable. New observable will be firing with non optional values.
    ///
    /// - Parameter transform: Transformation block.
    /// - Returns: Wrapped current observable with flat map transformation support.
    public func flatMap<To>(_ transform: @escaping (Value) -> To?) -> FlatMapTransformObservable<To, Self> {
        return FlatMapTransformObservable<To, Self>(source: self, transform: transform)
    }
}
