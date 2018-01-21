//
//  DisposeBag.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// `DisposeBag` define mechanism to manage your `Disposable` objects.
///
/// Bag keep all disposables in memory while it not deallocated.
///
/// Bag gives you 'chain' mechanism for observation logic:
///
///     let label = UILabel()
///     let disposeBag = DisposeBag()
///
///     label
///         .observable(at: \UILabel.text)
///         .observe(onNext: { "Observed text: \($0 ?? <none>)" })
///         .dispose(in: disposeBag)
///
public class DisposeBag {
    
    /// Array of appended disposables.
    private(set) var disposables: [Disposable]
    
    /// Initialize new bag.
    public init() {
        disposables = []
    }
    
    deinit {
        disposables.forEach { (disposable) in
            disposable.invalidate()
        }
        
        disposables.removeAll()
    }
    
    /// Append new disposable to bag.
    ///
    /// - Parameter disposable: Disposable to append.
    func append(disposable: Disposable) {
        disposables.append(disposable)
    }
}

extension Disposable {
    
    /// Append this disposable to specified dispose bag.
    ///
    /// - Parameter disposeBag: Bag to append disposable.
    public func dispose(in disposeBag: DisposeBag) {
        disposeBag.append(disposable: self)
    }
}
