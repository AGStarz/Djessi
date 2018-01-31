//
//  UIDynamicItemBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIDynamicItemBehavior {
    
    /// Observable for `elasticity` property of `UIDynamicItemBehavior` source.
    public var elasticity: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.elasticity)
    }
    
    /// Observable for `friction` property of `UIDynamicItemBehavior` source.
    public var friction: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.friction)
    }
    
    /// Observable for `density` property of `UIDynamicItemBehavior` source.
    public var density: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.density)
    }
    
    /// Observable for `resistance` property of `UIDynamicItemBehavior` source.
    public var resistance: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.resistance)
    }
    
    /// Observable for `angularResistance` property of `UIDynamicItemBehavior` source.
    public var angularResistance: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.angularResistance)
    }
    
    /// Observable for `charge` property of `UIDynamicItemBehavior` source.
    @available(iOS 9.0, *)
    public var charge: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.charge)
    }
    
    /// Observable for `isAnchored` property of `UIDynamicItemBehavior` source.
    @available(iOS 9.0, *)
    public var isAnchored: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isAnchored)
    }
    
    /// Observable for `allowsRotation` property of `UIDynamicItemBehavior` source.
    public var allowsRotation: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsRotation)
    }
}
