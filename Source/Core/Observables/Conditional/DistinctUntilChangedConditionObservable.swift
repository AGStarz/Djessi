//
//  DistinctUntilChangedConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// <#Description#>
public class DistinctUntilChangedConditionObservable<O: Observable>: Observable where O.Value: Equatable {
    
    /// Observing value type
    public typealias Value = O.Value
    
    /// Source observable whose changes handle current observable.
    private let source: O
    
    /// <#Description#>
    private var lastKnownValue: Value?
    
    /// <#Description#>
    ///
    /// - Parameter observable: <#observable description#>
    init(observable: O) {
        source = observable
    }
    
    /// <#Description#>
    ///
    /// - Parameter onNext: <#onNext description#>
    /// - Returns: <#return value description#>
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            defer { self.lastKnownValue = value }
            
            guard self.lastKnownValue != value else { return }
                
            onNext(value)
        }
    }
}

extension Observable where Value: Equatable {
    
    /// <#Description#>
    public var distinctUntilChanged: DistinctUntilChangedConditionObservable<Self> {
        return DistinctUntilChangedConditionObservable(observable: self)
    }
}
