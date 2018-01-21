//
//  UISnapBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UISnapBehavior {
    
    /// Observable for `snapPoint` property of `UISnapBehavior` source.
    @available(iOS 9.0, *)
    public var snapPoint: AnyKeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.snapPoint)
    }
    
    /// Observable for `damping` property of `UISnapBehavior` source.
    public var damping: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.damping)
    }
}
