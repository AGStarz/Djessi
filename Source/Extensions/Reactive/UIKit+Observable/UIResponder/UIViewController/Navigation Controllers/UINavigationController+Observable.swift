//
//  UINavigationController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UINavigationController {

    /// Observable for `viewControllers` property of `UINavigationController` source.
    public var viewControllers: AnyKeyPathObservable<Source, [UIViewController]> {
        return source.observable(at: \Source.viewControllers)
    }
    
    /// Observable for `isNavigationBarHidden` property of `UINavigationController` source.
    public var isNavigationBarHidden: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isNavigationBarHidden)
    }
    
    /// Observable for `isToolbarHidden` property of `UINavigationController` source.
    @available(iOS 3.0, *)
    public var isToolbarHidden: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isToolbarHidden)
    }
    
    /// Observable for `hidesBarsWhenKeyboardAppears` property of `UINavigationController` source.
    @available(iOS 8.0, *)
    public var hidesBarsWhenKeyboardAppears: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesBarsWhenKeyboardAppears)
    }
    
    /// Observable for `hidesBarsOnSwipe` property of `UINavigationController` source.
    @available(iOS 8.0, *)
    public var hidesBarsOnSwipe: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesBarsOnSwipe)
    }
    
    /// Observable for `hidesBarsWhenVerticallyCompact` property of `UINavigationController` source.
    @available(iOS 8.0, *)
    public var hidesBarsWhenVerticallyCompact: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesBarsWhenVerticallyCompact)
    }
    
    /// Observable for `hidesBarsOnTap` property of `UINavigationController` source.
    @available(iOS 8.0, *)
    public var hidesBarsOnTap: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesBarsOnTap)
    }
}
