//
//  MapTransformObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 13.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define mapping values for observables.
///
/// You can use `MapTransformObservable` only by calling `map` method defined for all `Observable` types:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text).map({ $0?.count ?? 0 })
///
public class MapTransformObservable<To, K: Observable>: Observable {
    
    /// Observing value type
    public typealias Value = To
    
    /// Associated observable whose changes handle current observable.
    private let associatedObservable: K
    
    /// Transform block for observed values.
    private let transform: (K.Value) -> To
    
    /// Create new map transformation support for observable.
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
    
    /// Add map transformation for current observable. New observable will be firing with mapped values.
    ///
    /// - Parameter transform: Map transformation block.
    /// - Returns: Wrapped current observable with map transformation support.
    public func map<To>(_ transform: @escaping (Value) -> To) -> MapTransformObservable<To, Self> {
        return MapTransformObservable<To, Self>(source: self, transform: transform)
    }
}
