//
//  KPODisposable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Disposable` protocol.
public struct KPODisposable: Disposable {
    
    /// Smart key path disposable token.
    let token: NSKeyValueObservation
    
    /// Invalidation method. It should be called when you dont need this disposable.
    public func invalidate() {
        token.invalidate()
    }
}
