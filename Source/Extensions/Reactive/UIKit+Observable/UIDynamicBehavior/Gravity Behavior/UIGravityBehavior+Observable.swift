//
//  UIGravityBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIGravityBehavior {
    
    /// Observable for `angle` property of `UIGravityBehavior` source.
    public var angle: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.angle)
    }
    
    /// Observable for `gravityDirection` property of `UIGravityBehavior` source.
    public var gravityDirection: AnyKeyPathObservable<Source, CGVector> {
        return source.observable(at: \Source.gravityDirection)
    }
    
    /// Observable for `magnitude` property of `UIGravityBehavior` source.
    public var magnitude: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.magnitude)
    }
}
