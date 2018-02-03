//
//  SkipConditionObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 03.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// <#Description#>
public class SkipConditionObservable<O: Observable>: Observable {
    
    public typealias Value = O.Value
    
    /// <#Description#>
    private let source: O
    
    /// <#Description#>
    private var counter: Int
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - observable: <#observable description#>
    ///   - count: <#count description#>
    init(observable: O, count: Int) {
        source = observable
        counter = count
    }
    
    /// <#Description#>
    ///
    /// - Parameter onNext: <#onNext description#>
    /// - Returns: <#return value description#>
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return source.observe { (value) in
            defer { self.counter = max(0, self.counter - 1) }
            
            guard self.counter == 0 else { return }
            
            onNext(value)
        }
    }
}

extension Observable {
    
    /// <#Description#>
    ///
    /// - Parameter count: <#count description#>
    /// - Returns: <#return value description#>
    public func skip(_ count: Int) -> SkipConditionObservable<Self> {
        return SkipConditionObservable(observable: self, count: count)
    }
}
