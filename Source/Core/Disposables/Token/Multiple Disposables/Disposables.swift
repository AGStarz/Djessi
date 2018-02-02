//
//  Disposables.swift
//  Djessi
//
//  Created by Vasily Agafonov on 02.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Disposable` protocol.
///
/// Container for array of another `Disposable`'s.
struct Disposables: Disposable {
    
    /// Array of disposables.
    let disposables: [Disposable]
    
    /// Invalidate all disposables in container.
    func invalidate() {
        disposables.forEach { (disposable) in
            disposable.invalidate()
        }
    }
}
