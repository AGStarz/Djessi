//
//  NSObject+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

extension NSObjectProtocol where Self: NSObject {
    
    /// Create new observable with specified key path.
    ///
    /// - Parameters:
    ///   - keyPath: Key path of field which will be observed.
    ///   - shouldObserveInitialValue: Indicates that observing block should be called for initial value or not. Default value is `true`
    /// - Returns: New key path observable instance.
    public func observable<V>(at keyPath: ReferenceWritableKeyPath<Self, V>, shouldObserveInitialValue: Bool = true) -> AnyKeyPathObservable<Self, V> {
        return AnyKeyPathObservable(source: self, keyPath: keyPath, shouldObserveInitialValue: shouldObserveInitialValue)
    }
}
