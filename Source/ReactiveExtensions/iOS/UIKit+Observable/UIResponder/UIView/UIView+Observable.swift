//
//  UIView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

extension ReactiveExtension where Source: UIView {
    
    /// Observable for `isHidden` property of `UIView` source.
    public var isHidden: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHidden)
    }
    
    /// Observable for `frame` property of `UIView` source.
    public var frame: KeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.frame)
    }
    
    /// Observable for `bounds` property of `UIView` source.
    public var bounds: KeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.bounds)
    }
    
    /// Observable for `isUserInteractionEnabled` property of `UIView` source.
    public var isUserInteractionEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isUserInteractionEnabled)
    }
    
    /// Observable for `tag` property of `UIView` source.
    public var tag: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.tag)
    }
    
    /// Observable for `center` property of `UIView` source.
    public var center: KeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.center)
    }
    
    /// Observable for `transform` property of `UIView` source.
    public var transform: KeyPathObservable<Source, CGAffineTransform> {
        return source.observable(at: \Source.transform)
    }
    
    /// Observable for `isMultipleTouchEnabled` property of `UIView` source.
    public var isMultipleTouchEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isMultipleTouchEnabled)
    }
    
    /// Observable for `isExclusiveTouch` property of `UIView` source.
    public var isExclusiveTouch: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isExclusiveTouch)
    }
    
    /// Observable for `autoresizesSubviews` property of `UIView` source.
    public var autoresizesSubviews: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.autoresizesSubviews)
    }
    
    /// Observable for `autoresizingMask` property of `UIView` source.
    public var autoresizingMask: KeyPathObservable<Source, UIViewAutoresizing> {
        return source.observable(at: \Source.autoresizingMask)
    }
    
    /// Observable for `clipsToBounds` property of `UIView` source.
    public var clipsToBounds: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clipsToBounds)
    }
    
    /// Observable for `backgroundColor` property of `UIView` source.
    public var backgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.backgroundColor)
    }
    
    /// Observable for `alpha` property of `UIView` source.
    public var alpha: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.alpha)
    }
    
    /// Observable for `isOpaque` property of `UIView` source.
    public var isOpaque: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isOpaque)
    }
    
    /// Observable for `clearsContextBeforeDrawing` property of `UIView` source.
    public var clearsContextBeforeDrawing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsContextBeforeDrawing)
    }
    
    /// Observable for `contentMode` property of `UIView` source.
    public var contentMode: KeyPathObservable<Source, UIViewContentMode> {
        return source.observable(at: \Source.contentMode)
    }
    
    /// Observable for `contentScaleFactor` property of `UIView` source.
    @available(iOS 4.0, *)
    public var contentScaleFactor: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.contentScaleFactor)
    }
    
    /// Observable for `layoutMargins` property of `UIView` source.
    @available(iOS 8.0, *)
    public var layoutMargins: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.layoutMargins)
    }
    
    /// Observable for `directionalLayoutMargins` property of `UIView` source.
    @available(iOS 11.0, *)
    public var directionalLayoutMargins: KeyPathObservable<Source, NSDirectionalEdgeInsets> {
        return source.observable(at: \Source.directionalLayoutMargins)
    }
    
    /// Observable for `preservesSuperviewLayoutMargins` property of `UIView` source.
    @available(iOS 8.0, *)
    public var preservesSuperviewLayoutMargins: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.preservesSuperviewLayoutMargins)
    }
    
    /// Observable for `insetsLayoutMarginsFromSafeArea` property of `UIView` source.
    @available(iOS 11.0, *)
    public var insetsLayoutMarginsFromSafeArea: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.insetsLayoutMarginsFromSafeArea)
    }
    
    /// Observable for `mask` property of `UIView` source.
    @available(iOS 8.0, *)
    public var mask: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.mask)
    }
    
    /// Observable for `tintColor` property of `UIView` source.
    @available(iOS 7.0, *)
    public var tintColor: KeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `tintAdjustmentMode` property of `UIView` source.
    @available(iOS 7.0, *)
    public var tintAdjustmentMode: KeyPathObservable<Source, UIViewTintAdjustmentMode> {
        return source.observable(at: \Source.tintAdjustmentMode)
    }
    
    /// Observable for `translatesAutoresizingMaskIntoConstraints` property of `UIView` source.
    @available(iOS 6.0, *)
    public var translatesAutoresizingMaskIntoConstraints: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.translatesAutoresizingMaskIntoConstraints)
    }
    
    /// Observable for `semanticContentAttribute` property of `UIView` source.
    @available(iOS 9.0, *)
    public var semanticContentAttribute: KeyPathObservable<Source, UISemanticContentAttribute> {
        return source.observable(at: \Source.semanticContentAttribute)
    }
    
    /// Observable for `restorationIdentifier` property of `UIView` source.
    @available(iOS 6.0, *)
    public var restorationIdentifier: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.restorationIdentifier)
    }
    
    /// Observable for `accessibilityIgnoresInvertColors` property of `UIView` source.
    @available(iOS 11.0, *)
    public var accessibilityIgnoresInvertColors: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.accessibilityIgnoresInvertColors)
    }
}
