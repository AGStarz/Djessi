//
//  UIMotionEffectGroup+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIMotionEffectGroup {
    
    /// Observable for `motionEffects` property of `UIMotionEffectGroup` source.
    public var motionEffects: AnyKeyPathObservable<Source, [UIMotionEffect]?> {
        return source.observable(at: \Source.motionEffects)
    }
}
