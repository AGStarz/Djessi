//
//  AnyKeyPathObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `KeyPathObservable` protocol.
public class AnyKeyPathObservable<Source: NSObject, Value>: KeyPathObservable {
    
    /// Source object whose field will be observed.
    public let source: Source
    
    /// Smart key path to observe.
    public let keyPath: ReferenceWritableKeyPath<Source, Value>
    
    /// Observing options which will be used to create observable.
    private let observingOptions: NSKeyValueObservingOptions
    
    /// Create new observable at key path of source.
    ///
    /// You can manually create observables:
    ///
    ///     let label = UILabel()
    ///     let observable = AnyKeyPathObservable(source: label, keyPath: \UILabel.text)
    ///
    /// Or use `NSObject` support method:
    ///
    ///     let label = UILabel()
    ///     let observable = label.observable(at: \UILabel.text)
    ///
    /// - Parameters:
    ///   - source: Source object whose field will be observed.
    ///   - keyPath: Key path of field which will be observed.
    ///   - shouldObserveInitialValue: Indicates that observing block should be called for initial value or not. Default value is `true`.
    init(source: Source, keyPath: ReferenceWritableKeyPath<Source, Value>, shouldObserveInitialValue: Bool = true) {
        self.source = source
        self.keyPath = keyPath
        observingOptions = shouldObserveInitialValue ? [.new, .initial] : [.new]
    }
    
    /// Start observe changes.
    ///
    /// - Parameter onNext: Block which will be called on each value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        let token = source.observe(keyPath, options: observingOptions) { (source, _) in
            onNext(source[keyPath: self.keyPath])
        }
        
        return KPODisposable(token: token)
    }
}
