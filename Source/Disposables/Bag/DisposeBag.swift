//
//  DisposeBag.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import Foundation

/// `DisposeBag` define mechanism to manage your `Disposable` objects. Bag keep all disposables in memory while you not deinited the bag.
public class DisposeBag {
    
    /// Array of appended disposables.
    private(set) var disposables: [Disposable]
    
    /// Initialize new object with empty bag.
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
