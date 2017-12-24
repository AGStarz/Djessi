//
//  UIImageView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIImageView {

    /// Observable for `image` property of `UIImageView` source.
    public var image: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
    
    /// Observable for `highlightedImage` property of `UIImageView` source.
    @available(iOS 3.0, *)
    public var highlightedImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.highlightedImage)
    }
    
    /// Observable for `isHighlighted` property of `UIImageView` source.
    @available(iOS 3.0, *)
    public var isHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `animationImages` property of `UIImageView` source.
    public var animationImages: AnyKeyPathObservable<Source, [UIImage]?> {
        return source.observable(at: \Source.animationImages)
    }
    
    /// Observable for `highlightedAnimationImages` property of `UIImageView` source.
    @available(iOS 3.0, *)
    public var highlightedAnimationImages: AnyKeyPathObservable<Source, [UIImage]?> {
        return source.observable(at: \Source.highlightedAnimationImages)
    }
    
    // animationDuration: TimeInterval
    /// Observable for `animationDuration` property of `UIImageView` source.
    public var animationDuration: AnyKeyPathObservable<Source, TimeInterval> {
        return source.observable(at: \Source.animationDuration)
    }
    
    /// Observable for `animationRepeatCount` property of `UIImageView` source.
    public var animationRepeatCount: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.animationRepeatCount)
    }
    
    /// Observable for `tintColor` property of `UIImageView` source.
    @available(iOS 7.0, *)
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `isAnimating` property of `UIImageView` source.
    public var isAnimating: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.djessi_isAnimating)
    }
}

extension UIImageView {
    
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
