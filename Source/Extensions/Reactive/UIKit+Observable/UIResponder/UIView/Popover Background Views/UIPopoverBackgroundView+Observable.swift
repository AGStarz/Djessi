//
//  UIPopoverBackgroundView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIPopoverBackgroundView {

    /// Observable for `arrowOffset` property of `UIPopoverBackgroundView` source.
    public var arrowOffset: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.arrowOffset)
    }
    
    /// Observable for `arrowDirection` property of `UIPopoverBackgroundView` source.
    public var arrowDirection: AnyKeyPathObservable<Source, UIPopoverArrowDirection> {
        return source.observable(at: \Source.arrowDirection)
    }
}
