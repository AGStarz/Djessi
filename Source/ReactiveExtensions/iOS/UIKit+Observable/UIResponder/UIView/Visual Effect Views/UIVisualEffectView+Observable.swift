//
//  UIVisualEffectView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIVisualEffectView {
    
    /// Observable for `effect` property of `UIVisualEffectView` source.
    public var effect: AnyKeyPathObservable<Source, UIVisualEffect?> {
        return source.observable(at: \Source.effect)
    }
}
