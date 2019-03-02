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
    public var style: KeyPathObservable<Source, UIBarButtonItem.Style> {
        return source.observable(at: \Source.style)
    }
    
    /// Observable for `width` property of `UIBarButtonItem` source.
    public var width: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.width)
    }
    
    /// Observable for `possibleTitles` property of `UIBarButtonItem` source.
    public var possibleTitles: KeyPathObservable<Source, Set<String>?> {
        return source.observable(at: \Source.possibleTitles)
    }
    
    /// Observable for `customView` property of `UIBarButtonItem` source.
    public var customView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.customView)
    }
    
    /// Observable for `action` property of `UIBarButtonItem` source.
    public var action: KeyPathObservable<Source, Selector?> {
        return source.observable(at: \Source.action)
    }
    
    /// Observable for `target` property of `UIBarButtonItem` source.
    public var target: KeyPathObservable<Source, AnyObject?> {
        return source.observable(at: \Source.target)
    }
    
    /// Observable for `tintColor` property of `UIBarButtonItem` source.
    @available(iOS 5.0, *)
    public var tintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.tintColor)
    }
}
