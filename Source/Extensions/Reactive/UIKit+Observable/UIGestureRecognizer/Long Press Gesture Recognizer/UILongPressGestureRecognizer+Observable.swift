//
//  UILongPressGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UILongPressGestureRecognizer {
    
    /// Observable for `numberOfTapsRequired` property of `UILongPressGestureRecognizer` source.
    public var numberOfTapsRequired: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfTapsRequired)
    }
    
    /// Observable for `numberOfTouchesRequired` property of `UILongPressGestureRecognizer` source.
    public var numberOfTouchesRequired: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfTouchesRequired)
    }
    
    /// Observable for `minimumPressDuration` property of `UILongPressGestureRecognizer` source.
    public var minimumPressDuration: AnyKeyPathObservable<Source, CFTimeInterval> {
        return source.observable(at: \Source.minimumPressDuration)
    }
    
    /// Observable for `allowableMovement` property of `UILongPressGestureRecognizer` source.
    public var allowableMovement: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.allowableMovement)
    }
}
