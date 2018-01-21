//
//  UIPinchGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIPinchGestureRecognizer {
    
    /// Observable for `scale` property of `UIPinchGestureRecognizer` source.
    public var scale: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.scale)
    }
}
