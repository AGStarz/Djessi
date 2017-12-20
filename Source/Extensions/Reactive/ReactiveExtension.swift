//
//  ReactiveExtension.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

/// Reactive functions container object.
public struct ReactiveExtension<Source> {
    let source: Source
}

/// Reactive compatible objects protocol. To add reactive support for your objects adopt it to this protocol.
public protocol Reactive { }

extension Reactive {
    
    /// Main point to access available reactive functions for current object.
    public var asReactive: ReactiveExtension<Self> {
        return ReactiveExtension<Self>(source: self)
    }
}

// MARK: - Adopt `NSObject` to `Reactive`

extension NSObject: Reactive { }
