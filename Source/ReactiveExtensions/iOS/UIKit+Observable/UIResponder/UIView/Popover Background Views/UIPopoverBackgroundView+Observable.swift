//
//  UIPopoverBackgroundView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIPopoverBackgroundView {

    /// Observable for `arrowOffset` property of `UIPopoverBackgroundView` source.
    public var arrowOffset: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.arrowOffset)
    }
    
    /// Observable for `arrowDirection` property of `UIPopoverBackgroundView` source.
    public var arrowDirection: KeyPathObservable<Source, UIPopoverArrowDirection> {
        return source.observable(at: \Source.arrowDirection)
    }
}
