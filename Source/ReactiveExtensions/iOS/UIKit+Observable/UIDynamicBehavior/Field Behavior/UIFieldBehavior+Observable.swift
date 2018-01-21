//
//  UIFieldBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UIFieldBehavior {
    
    /// Observable for `strength` property of `UIFieldBehavior` source.
    public var strength: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.strength)
    }
    
    /// Observable for `position` property of `UIFieldBehavior` source.
    public var position: AnyKeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.position)
    }
    
    /// Observable for `region` property of `UIFieldBehavior` source.
    public var region: AnyKeyPathObservable<Source, UIRegion> {
        return source.observable(at: \Source.region)
    }
    
    /// Observable for `falloff` property of `UIFieldBehavior` source.
    public var falloff: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.falloff)
    }
    
    /// Observable for `minimumRadius` property of `UIFieldBehavior` source.
    public var minimumRadius: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumRadius)
    }
    
    /// Observable for `direction` property of `UIFieldBehavior` source.
    public var direction: AnyKeyPathObservable<Source, CGVector> {
        return source.observable(at: \Source.direction)
    }
    
    /// Observable for `smoothness` property of `UIFieldBehavior` source.
    public var smoothness: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.smoothness)
    }
    
    /// Observable for `animationSpeed` property of `UIFieldBehavior` source.
    public var animationSpeed: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.animationSpeed)
    }
}
