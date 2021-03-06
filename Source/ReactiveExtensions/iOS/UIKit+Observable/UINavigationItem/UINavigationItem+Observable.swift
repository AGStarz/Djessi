//
//  UINavigationItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UINavigationItem {
    
    /// Observable for `title` property of `UINavigationItem` source.
    public var title: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `titleView` property of `UINavigationItem` source.
    public var titleView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.titleView)
    }
    
    /// Observable for `prompt` property of `UINavigationItem` source.
    public var prompt: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.prompt)
    }
    
    /// Observable for `backBarButtonItem` property of `UINavigationItem` source.
    public var backBarButtonItem: KeyPathObservable<Source, UIBarButtonItem?> {
        return source.observable(at: \Source.backBarButtonItem)
    }
    
    /// Observable for `hidesBackButton` property of `UINavigationItem` source.
    public var hidesBackButton: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesBackButton)
    }
    
    /// Observable for `leftBarButtonItems` property of `UINavigationItem` source.
    @available(iOS 5.0, *)
    public var leftBarButtonItems: KeyPathObservable<Source, [UIBarButtonItem]?> {
        return source.observable(at: \Source.leftBarButtonItems)
    }
    
    /// Observable for `rightBarButtonItems` property of `UINavigationItem` source.
    @available(iOS 5.0, *)
    public var rightBarButtonItems: KeyPathObservable<Source, [UIBarButtonItem]?> {
        return source.observable(at: \Source.rightBarButtonItems)
    }
    
    /// Observable for `leftItemsSupplementBackButton` property of `UINavigationItem` source.
    @available(iOS 5.0, *)
    public var leftItemsSupplementBackButton: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.leftItemsSupplementBackButton)
    }
    
    /// Observable for `leftBarButtonItem` property of `UINavigationItem` source.
    public var leftBarButtonItem: KeyPathObservable<Source, UIBarButtonItem?> {
        return source.observable(at: \Source.leftBarButtonItem)
    }
    
    /// Observable for `rightBarButtonItem` property of `UINavigationItem` source.
    public var rightBarButtonItem: KeyPathObservable<Source, UIBarButtonItem?> {
        return source.observable(at: \Source.rightBarButtonItem)
    }
    
    /// Observable for `largeTitleDisplayMode` property of `UINavigationItem` source.
    @available(iOS 11.0, *)
    public var largeTitleDisplayMode: KeyPathObservable<Source, UINavigationItem.LargeTitleDisplayMode> {
        return source.observable(at: \Source.largeTitleDisplayMode)
    }
    
    /// Observable for `searchController` property of `UINavigationItem` source.
    @available(iOS 11.0, *)
    public var searchController: KeyPathObservable<Source, UISearchController?> {
        return source.observable(at: \Source.searchController)
    }
    
    /// Observable for `hidesSearchBarWhenScrolling` property of `UINavigationItem` source.
    @available(iOS 11.0, *)
    public var hidesSearchBarWhenScrolling: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesSearchBarWhenScrolling)
    }
}
