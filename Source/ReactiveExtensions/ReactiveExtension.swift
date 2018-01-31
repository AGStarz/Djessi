//
//  ReactiveExtension.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

/// Reactive functions container object.
public struct ReactiveExtension<Source> {
    let source: Source
}

/// Reactive compatible objects protocol. To add reactive support for your objects adopt it to this protocol.
public protocol Reactive { }

extension Reactive {
    
    /// Main point to access reactive functions for current object.
    public var asReactive: ReactiveExtension<Self> {
        return ReactiveExtension<Self>(source: self)
    }
}

// MARK: - Adopt `NSObject` to `Reactive`

extension NSObject: Reactive { }
