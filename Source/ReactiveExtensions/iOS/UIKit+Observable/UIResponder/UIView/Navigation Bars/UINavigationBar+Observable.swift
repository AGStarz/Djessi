//
//  UINavigationBar+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: - not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UINavigationBar {

    /// Observable for `barStyle` property of `UINavigationBar` source.
    public var barStyle: KeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `isTranslucent` property of `UINavigationBar` source.
    @available(iOS 3.0, *)
    public var isTranslucent: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
    
    /// Observable for `items` property of `UINavigationBar` source.
    public var items: KeyPathObservable<Source, [UINavigationItem]?> {
        return source.observable(at: \Source.items)
    }
    
    /// Observable for `prefersLargeTitles` property of `UINavigationBar` source.
    @available(iOS 11.0, *)
    public var prefersLargeTitles: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.prefersLargeTitles)
    }
    
    /// Observable for `tintColor` property of `UINavigationBar` source.
    public var tintColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UINavigationBar` source.
    @available(iOS 7.0, *)
    public var barTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
    
    /// Observable for `shadowImage` property of `UINavigationBar` source.
    @available(iOS 6.0, *)
    public var shadowImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.shadowImage)
    }
    
    /// Observable for `titleTextAttributes` property of `UINavigationBar` source.
    @available(iOS 5.0, *)
    public var titleTextAttributes: KeyPathObservable<Source, [NSAttributedStringKey : Any]?> {
        return source.observable(at: \Source.titleTextAttributes)
    }
    
    /// Observable for `largeTitleTextAttributes` property of `UINavigationBar` source.
    @available(iOS 11.0, *)
    public var largeTitleTextAttributes: KeyPathObservable<Source, [NSAttributedStringKey : Any]?> {
        return source.observable(at: \Source.largeTitleTextAttributes)
    }
    
    /// Observable for `backIndicatorImage` property of `UINavigationBar` source.
    @available(iOS 7.0, *)
    public var backIndicatorImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backIndicatorImage)
    }
    
    /// Observable for `backIndicatorTransitionMaskImage` property of `UINavigationBar` source.
    @available(iOS 7.0, *)
    public var backIndicatorTransitionMaskImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backIndicatorTransitionMaskImage)
    }
}
