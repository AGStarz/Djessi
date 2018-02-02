//
//  CombineLatestObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 02.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define combination rule to get latest values from two observables.
///
/// You can use `CombineLatestObservable` only by calling `combineLatest` method defined for all `Observable` types:
///
///     let labelOne = UILabel()
///     let labelTwo = UILabel()
///
///     let observableOne = labelOne.observable(at: \UILabel.text).flatMap({ $0 })
///     let observableTwo = labelTwo.observable(at: \UILabel.text).flatMap({ $0 })
///
///     let token = observableOne
///         .combineLatest(with: observableTwo)
///         .observe { (value) in
///             print("Value one is \(value.0)")
///             print("Value two is \(value.1)")
///         }
///
/// - Warning:
/// You should keep strong reference to token's which was returned by calling `observe` method or use `DisposeBag` because object will be finished generate observation changes if token deallocated.
public class CombineLatestObservable<O1: Observable, O2: Observable>: Observable {
    
    /// Observation value type - tuple consists with value type from first observable & with value type from second observable.
    public typealias Value = (O1.Value, O2.Value)
    
    /// Stored first observable.
    private let observableOne: O1
    
    /// Stored second observable.
    private let observableTwo: O2
    
    /// Last observed value from first observable if exists.
    private var observableOneValue: O1.Value? = nil
    
    /// Last observed value from second observable if exists.
    private var observableTwoValue: O2.Value? = nil
    
    /// Create new combine latest observable.
    ///
    /// - Parameters:
    ///   - observable1: First observable.
    ///   - observable2: Second observable.
    init(observable1: O1, observable2: O2) {
        observableOne = observable1
        observableTwo = observable2
    }
    
    /// Start observe changes. Block will be start triggering when every observable have at least one value change.
    ///
    /// - Parameter onNext: Block which will be called on each observable value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return Disposables(disposables: [
            observableOne.observe { (value) in
                self.observableOneValue = value
                
                guard let observableTwoValue = self.observableTwoValue else { return }
                
                let newValue = (value, observableTwoValue)
                
                onNext(newValue)
            },
            observableTwo.observe { (value) in
                self.observableTwoValue = value
                
                guard let observableOneValue = self.observableOneValue else { return }
                
                let newValue = (observableOneValue, value)
                
                onNext(newValue)
            }
        ])
    }
}

extension Observable {
    
    /// Combine current observable with new one. Changes can be observed when each observable will be have at least one value change.
    ///
    /// - Parameter observable: Another observable to combine with current one.
    /// - Returns: New observable with combine latest feature.
    public func combineLatest<O: Observable>(with observable: O) -> CombineLatestObservable<Self, O> {
        return CombineLatestObservable(observable1: self, observable2: observable)
    }
}
