//
//  KeyPathObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// Core observable for smart key path observing.
public protocol KeyPathObservable: Observable {
    associatedtype Source: NSObject
    
    /// Source object whose field will be observed. It constrained to `NSObject` because only `NSObject` support smart key path observing.
    var source: Source { get }
    
    /// Smart key path which used to produce observing.
    var keyPath: ReferenceWritableKeyPath<Source, Value> { get }
}

extension KeyPathObservable {
    
    /// Value setter/getter by provided key path of source object.
    internal var value: Value {
        get {
            return source[keyPath: keyPath]
        }
        set {
            source[keyPath: keyPath] = newValue
        }
    }
}

extension Observable where Value: Equatable {
    
    /// Bind current observable changes to another one with identical value type.
    ///
    /// - Parameter another: Another observable which should handle source changes. It constrained to `KeyPathObservable`.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func bind<T: KeyPathObservable>(to another: T) -> Disposable
        where T.Value == Value {
            return observe { (value) in
                guard another.value != value else { return }
                
                another.value = value
            }
    }
    
    /// Bind current observable changes to another one with optional value type of current one.
    ///
    /// - Parameter another: Another observable which should handle source changes. It constrained to `KeyPathObservable`.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func bind<T: KeyPathObservable>(to another: T) -> Disposable
        where T.Value == Optional<Value> {
            return observe { (value) in
                guard another.value != value else { return }
                
                another.value = value
            }
    }
    
    /// Bind current observable changes to another one with implicitly unwrapped value type of current one.
    ///
    /// - Parameter another: Another observable which should handle source changes. It constrained to `KeyPathObservable`.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func bind<T: KeyPathObservable>(to another: T) -> Disposable
        where T.Value == ImplicitlyUnwrappedOptional<Value> {
            return observe { (value) in
                guard another.value != value else { return }
                
                another.value = value
            }
    }
}
