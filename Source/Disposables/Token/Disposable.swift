//
//  Disposable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// Core protocol for all observables.
public protocol Disposable {
    
    /// Invalidation method. It should be called when you dont need this disposable.
    func invalidate()
}

extension Disposable {
    
    /// Append this disposable to specified dispose bag.
    ///
    /// - Parameter disposeBag: Bag to append disposable.
    public func dispose(in disposeBag: DisposeBag) {
        disposeBag.append(disposable: self)
    }
}
