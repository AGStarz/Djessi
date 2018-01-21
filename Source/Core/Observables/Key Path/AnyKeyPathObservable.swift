//
//  AnyKeyPathObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `KeyPathObservable` protocol.
///
/// You can manually create observables (through initializer):
///
///     let label = UILabel()
///     let observable = AnyKeyPathObservable(source: label, keyPath: \UILabel.text)
///
/// Or use `NSObject` support method:
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
public class AnyKeyPathObservable<Source: NSObject, Value>: KeyPathObservable {
    
    /// Source object whose property will be observed.
    /// - warning:
    /// That property stored with NOT strong reference to source object.
    public unowned let source: Source
    
    /// Key path to observe.
    public let keyPath: ReferenceWritableKeyPath<Source, Value>
    
    /// Observing options which will be used to create observable.
    private let observingOptions: NSKeyValueObservingOptions
    
    /// Create new observable at key path of source.
    ///
    /// - Parameters:
    ///   - source: Source object whose field will be observed.
    ///   - keyPath: Key path of field which will be observed.
    ///   - shouldObserveInitialValue: Indicates that observing block should be called for initial value or not. Default value is `true`.
    init(source: Source, keyPath: ReferenceWritableKeyPath<Source, Value>, shouldObserveInitialValue: Bool = true) {
        self.source = source
        self.keyPath = keyPath
        observingOptions = shouldObserveInitialValue ? [.new, .old, .initial] : [.new, .old]
    }
    
    /// Start observe changes.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token alive.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        let token = source.observe(keyPath, options: observingOptions) { (source, _) in
            onNext(source[keyPath: self.keyPath])
        }
        
        return KPODisposable(token: token)
    }
}
