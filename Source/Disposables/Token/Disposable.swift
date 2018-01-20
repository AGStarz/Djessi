//
//  Disposable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 10.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Core protocol for all disposables.
public protocol Disposable {
    
    /// Invalidation method. It should be called when you dont need this disposable.
    func invalidate()
}
