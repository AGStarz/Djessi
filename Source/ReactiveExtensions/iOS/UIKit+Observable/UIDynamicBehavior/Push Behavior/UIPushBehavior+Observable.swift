//
//  UIPushBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIPushBehavior {
    
    /// Observable for `angle` property of `UIPushBehavior` source.
    public var angle: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.angle)
    }
    
    /// Observable for `pushDirection` property of `UIPushBehavior` source.
    public var pushDirection: KeyPathObservable<Source, CGVector> {
        return source.observable(at: \Source.pushDirection)
    }
    
    /// Observable for `magnitude` property of `UIPushBehavior` source.
    public var magnitude: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.magnitude)
    }
    
    /// Observable for `active` property of `UIPushBehavior` source.
    public var active: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.active)
    }
}
