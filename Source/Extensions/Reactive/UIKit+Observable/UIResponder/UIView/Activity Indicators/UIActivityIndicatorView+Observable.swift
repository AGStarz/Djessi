//
//  UIActivityIndicatorView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: - not completed, add observable for animating property

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIActivityIndicatorView {

    /// Observable for `hidesWhenStopped` property of `UIActivityIndicatorView` source.
    public var hidesWhenStopped: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesWhenStopped)
    }
    
    /// Observable for `color` property of `UIActivityIndicatorView` source.
    @available(iOS 5.0, *)
    public var color: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.color)
    }
    
    /// Observable for `activityIndicatorViewStyle` property of `UIActivityIndicatorView` source.
    public var activityIndicatorViewStyle: AnyKeyPathObservable<Source, UIActivityIndicatorViewStyle> {
        return source.observable(at: \Source.activityIndicatorViewStyle)
    }
}
