//
//  UIViewPropertyAnimator+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIViewPropertyAnimator {
    
    /// Observable for `isUserInteractionEnabled` property of `UIViewPropertyAnimator` source.
    public var isUserInteractionEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isUserInteractionEnabled)
    }
    
    /// Observable for `isManualHitTestingEnabled` property of `UIViewPropertyAnimator` source.
    public var isManualHitTestingEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isManualHitTestingEnabled)
    }
    
    /// Observable for `isInterruptible` property of `UIViewPropertyAnimator` source.
    public var isInterruptible: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isInterruptible)
    }
    
    /// Observable for `scrubsLinearly` property of `UIViewPropertyAnimator` source.
    @available(iOS 11.0, *)
    public var scrubsLinearly: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.scrubsLinearly)
    }
    
    /// Observable for `pausesOnCompletion` property of `UIViewPropertyAnimator` source.
    @available(iOS 11.0, *)
    public var pausesOnCompletion: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.pausesOnCompletion)
    }
}
