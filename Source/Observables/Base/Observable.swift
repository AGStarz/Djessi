//
//  Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Core protocol of all observables.
public protocol Observable: class {
    associatedtype Value
    
    /// Subscribtion to next value changes.
    ///
    /// - Parameter onNext: Block which will be used to handle new value.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    func observe(onNext: @escaping (Value) -> Swift.Void) -> Disposable
}
