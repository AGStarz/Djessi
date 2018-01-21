//
//  UIBarButtonItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIBarButtonItem {
    
    /// Observable for `style` property of `UIBarButtonItem` source.
    public var style: AnyKeyPathObservable<Source, UIBarButtonItemStyle> {
        return source.observable(at: \Source.style)
    }
    
    /// Observable for `width` property of `UIBarButtonItem` source.
    public var width: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.width)
    }
    
    /// Observable for `possibleTitles` property of `UIBarButtonItem` source.
    public var possibleTitles: AnyKeyPathObservable<Source, Set<String>?> {
        return source.observable(at: \Source.possibleTitles)
    }
    
    /// Observable for `customView` property of `UIBarButtonItem` source.
    public var customView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.customView)
    }
    
    /// Observable for `action` property of `UIBarButtonItem` source.
    public var action: AnyKeyPathObservable<Source, Selector?> {
        return source.observable(at: \Source.action)
    }
    
    /// Observable for `target` property of `UIBarButtonItem` source.
    public var target: AnyKeyPathObservable<Source, AnyObject?> {
        return source.observable(at: \Source.target)
    }
    
    /// Observable for `tintColor` property of `UIBarButtonItem` source.
    @available(iOS 5.0, *)
    public var tintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.tintColor)
    }
}
