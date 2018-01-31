//
//  UIInterpolatingMotionEffect+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIInterpolatingMotionEffect {
    
    /// Observable for `minimumRelativeValue` property of `UIInterpolatingMotionEffect` source.
    public var minimumRelativeValue: KeyPathObservable<Source, Any?> {
        return source.observable(at: \Source.minimumRelativeValue)
    }
    
    /// Observable for `maximumRelativeValue` property of `UIInterpolatingMotionEffect` source.
    public var maximumRelativeValue: KeyPathObservable<Source, Any?> {
        return source.observable(at: \Source.maximumRelativeValue)
    }
}
