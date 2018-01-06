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
    public var elasticity: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.elasticity)
    }
    
    /// Observable for `friction` property of `UIDynamicItemBehavior` source.
    public var friction: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.friction)
    }
    
    /// Observable for `density` property of `UIDynamicItemBehavior` source.
    public var density: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.density)
    }
    
    /// Observable for `resistance` property of `UIDynamicItemBehavior` source.
    public var resistance: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.resistance)
    }
    
    /// Observable for `angularResistance` property of `UIDynamicItemBehavior` source.
    public var angularResistance: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.angularResistance)
    }
    
    /// Observable for `charge` property of `UIDynamicItemBehavior` source.
    @available(iOS 9.0, *)
    public var charge: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.charge)
    }
    
    /// Observable for `isAnchored` property of `UIDynamicItemBehavior` source.
    @available(iOS 9.0, *)
    public var isAnchored: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isAnchored)
    }
    
    /// Observable for `allowsRotation` property of `UIDynamicItemBehavior` source.
    public var allowsRotation: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsRotation)
    }
}
