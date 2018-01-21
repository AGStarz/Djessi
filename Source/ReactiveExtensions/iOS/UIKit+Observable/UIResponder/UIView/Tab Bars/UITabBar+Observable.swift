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
    public var items: AnyKeyPathObservable<Source, [UITabBarItem]?> {
        return source.observable(at: \Source.items)
    }
    
    /// Observable for `selectedItem` property of `UITabBar` source.
    public var selectedItem: AnyKeyPathObservable<Source, UITabBarItem?> {
        return source.observable(at: \Source.selectedItem)
    }
    
    /// Observable for `tintColor` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var barTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
    
    /// Observable for `unselectedItemTintColor` property of `UITabBar` source.
    @available(iOS 10.0, *)
    public var unselectedItemTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.unselectedItemTintColor)
    }
    
    /// Observable for `backgroundImage` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var backgroundImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backgroundImage)
    }
    
    /// Observable for `selectionIndicatorImage` property of `UITabBar` source.
    @available(iOS 5.0, *)
    public var selectionIndicatorImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.selectionIndicatorImage)
    }
    
    /// Observable for `shadowImage` property of `UITabBar` source.
    @available(iOS 6.0, *)
    public var shadowImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.shadowImage)
    }
    
    /// Observable for `itemPositioning` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemPositioning: AnyKeyPathObservable<Source, UITabBarItemPositioning> {
        return source.observable(at: \Source.itemPositioning)
    }
    
    /// Observable for `itemWidth` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemWidth: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.itemWidth)
    }
    
    /// Observable for `itemSpacing` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var itemSpacing: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.itemSpacing)
    }
    
    /// Observable for `barStyle` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var barStyle: AnyKeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `isTranslucent` property of `UITabBar` source.
    @available(iOS 7.0, *)
    public var isTranslucent: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
}
