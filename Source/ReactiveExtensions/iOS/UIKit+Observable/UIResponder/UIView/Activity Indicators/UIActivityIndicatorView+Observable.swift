//
//  UIActivityIndicatorView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIActivityIndicatorView {
    
    /// Observable for `isAnimating` property of `UIActivityIndicatorView` source.
    public var isAnimating: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.djessi_isAnimating)
    }

    /// Observable for `hidesWhenStopped` property of `UIActivityIndicatorView` source.
    public var hidesWhenStopped: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesWhenStopped)
    }
    
    /// Observable for `color` property of `UIActivityIndicatorView` source.
    @available(iOS 5.0, *)
    public var color: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.color)
    }
    
    /// Observable for `activityIndicatorViewStyle` property of `UIActivityIndicatorView` source.
    public var activityIndicatorViewStyle: KeyPathObservable<Source, UIActivityIndicatorViewStyle> {
        return source.observable(at: \Source.activityIndicatorViewStyle)
    }
}

extension UIActivityIndicatorView {
    
    /// Proxy property for `isAnimating` field.
    @objc internal dynamic var djessi_isAnimating: Bool {
        get {
            return isAnimating
        }
        set {
            if newValue {
                startAnimating()
            } else {
                stopAnimating()
            }
        }
    }
}
