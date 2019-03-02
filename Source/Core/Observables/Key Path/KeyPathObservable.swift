//
//  KeyPathObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// You can create observables through `NSObject` support method:
///
///     let label = UILabel()
///     let observable = label.observable(at: \UILabel.text)
///
/// To start listen changes call `observe` method:
///
///     let token = observable.observe { (value) in
///         // do some stuff with observed value
///     }
///
/// - Warning:
/// You should keep strong reference to token's which was returned by calling `observe` method or use `DisposeBag` because object will be finished generate observation changes if token deallocated.
public class KeyPathObservable<Source: NSObject, Value>: Observable {
    
    /// Source object whose property will be observed.
    /// - warning:
    /// This property stored with NOT strong reference to source object.
    private unowned let source: Source
    
    /// Key path to observe.
    private let keyPath: ReferenceWritableKeyPath<Source, Value>
    
    /// Observing options which will be used to create observable.
    private let options: NSKeyValueObservingOptions
    
    /// Create new observable at key path of source.
    ///
    /// - Parameters:
    ///   - source: Source object whose field will be observed.
    ///   - keyPath: Key path of field which will be observed.
    ///   - shouldObserveInitialValue: Indicates that observing block should be called for initial value or not. Default value is `true`.
    init(source: Source, keyPath: ReferenceWritableKeyPath<Source, Value>, options: NSKeyValueObservingOptions = [.new, .old, .initial]) {
        self.source = source
        self.keyPath = keyPath
        self.options = options
    }
    
    /// Start observe changes.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token alive.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        let token = source.observe(keyPath, options: options) { (source, _) in
            onNext(source[keyPath: self.keyPath])
        }
        
        return KPODisposable(token: token)
    }
}

extension KeyPathObservable {
    
    /// Internal value setter/getter by provided key path of source object.
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
    public func bind<Source, ObservableValue>(to another: KeyPathObservable<Source, ObservableValue>) -> Disposable where ObservableValue == Value {
        return observe { (value) in
            guard another.value != value else { return }
            
            another.value = value
        }
    }
    
    /// Bind current observable changes to another one with optional value type of current one.
    ///
    /// - Parameter another: Another observable which should handle source changes. It constrained to `KeyPathObservable`.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func bind<Source, ObservableValue>(to another: KeyPathObservable<Source, Optional<ObservableValue>>) -> Disposable where ObservableValue == Value {
        return observe { (value) in
            guard another.value != value else { return }
            
            another.value = value
        }
    }
}

extension NSObjectProtocol where Self: NSObject {
    
    /// Create new observable with specified key path.
    ///
    /// - Parameters:
    ///   - keyPath: Key path of field which will be observed.
    ///   - shouldObserveInitialValue: Indicates that observing block should be called for initial value or not. Default value is `true`
    /// - Returns: New key path observable instance.
    public func observable<V>(at keyPath: ReferenceWritableKeyPath<Self, V>, shouldObserveInitialValue: Bool = true) -> KeyPathObservable<Self, V> {
        return KeyPathObservable(source: self, keyPath: keyPath, options: shouldObserveInitialValue ? [.new, .old, .initial] : [.new, .old])
    }
}
