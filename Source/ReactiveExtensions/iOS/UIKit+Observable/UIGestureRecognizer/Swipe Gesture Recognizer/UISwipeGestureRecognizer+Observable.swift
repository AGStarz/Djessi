//
//  UISwipeGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UISwipeGestureRecognizer {
    
    /// Observable for `numberOfTouchesRequired` property of `UISwipeGestureRecognizer` source.
    public var numberOfTouchesRequired: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfTouchesRequired)
    }
    
    /// Observable for `direction` property of `UISwipeGestureRecognizer` source.
    public var direction: AnyKeyPathObservable<Source, UISwipeGestureRecognizerDirection> {
        return source.observable(at: \Source.direction)
    }
}
