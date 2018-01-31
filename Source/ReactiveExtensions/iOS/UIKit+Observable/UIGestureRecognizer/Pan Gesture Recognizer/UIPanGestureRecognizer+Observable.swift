//
//  UIPanGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIPanGestureRecognizer {
    
    /// Observable for `minimumNumberOfTouches` property of `UIPanGestureRecognizer` source.
    public var minimumNumberOfTouches: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.minimumNumberOfTouches)
    }
    
    /// Observable for `maximumNumberOfTouches` property of `UIPanGestureRecognizer` source.
    public var maximumNumberOfTouches: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.maximumNumberOfTouches)
    }
}
