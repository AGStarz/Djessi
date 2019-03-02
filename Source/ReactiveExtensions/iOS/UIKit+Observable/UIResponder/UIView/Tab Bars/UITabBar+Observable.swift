//
//  UITabBar+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITabBar {
    
    /// Observable for `items` property of `UITabBar` source.
    public var items: KeyPathObservable<Source, [UITabBarItem]?> {
        return source.observable(at: \Source.items)
    }
    
    /// Observable for `selectedItem` property of `UITabBar` source.
    public var selectedItem: KeyPathObservable<Source, UITabBarItem?> {
        return source.observable(at: \Source.selectedItem)
    }
    
    /// Observable for `tintColor` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var tintColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var barTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
    
    /// Observable for `unselectedItemTintColor` property of `UITabBar` source.
    @available(iOS 10.0, *)
    public var unselectedItemTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.unselectedItemTintColor)
    }
    
    /// Observable for `backgroundImage` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var backgroundImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backgroundImage)
    }
    
    /// Observable for `selectionIndicatorImage` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var selectionIndicatorImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.selectionIndicatorImage)
    }
    
    /// Observable for `shadowImage` property of `UITabBar` source.
    @available(iOS 6.0, *)
    public var shadowImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.shadowImage)
    }
    
    /// Observable for `itemPositioning` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemPositioning: KeyPathObservable<Source, UITabBarItemPositioning> {
        return source.observable(at: \Source.itemPositioning)
    }
    
    /// Observable for `itemWidth` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemWidth: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.itemWidth)
    }
    
    /// Observable for `itemSpacing` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemSpacing: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.itemSpacing)
    }
    
    /// Observable for `barStyle` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var barStyle: KeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `isTranslucent` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var isTranslucent: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
}
