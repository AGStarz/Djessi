//
//  UISplitViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UISplitViewController {

    /// Observable for `viewControllers` property of `UISplitViewController` source.
    public var viewControllers: AnyKeyPathObservable<Source, [UIViewController]> {
        return source.observable(at: \Source.viewControllers)
    }
    
    /// Observable for `presentsWithGesture` property of `UISplitViewController` source.
    @available(iOS 5.1, *)
    public var presentsWithGesture: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.presentsWithGesture)
    }
    
    /// Observable for `preferredDisplayMode` property of `UISplitViewController` source.
    @available(iOS 8.0, *)
    public var preferredDisplayMode: AnyKeyPathObservable<Source, UISplitViewControllerDisplayMode> {
        return source.observable(at: \Source.preferredDisplayMode)
    }
    
    /// Observable for `preferredPrimaryColumnWidthFraction` property of `UISplitViewController` source.
    @available(iOS 8.0, *)
    public var preferredPrimaryColumnWidthFraction: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.preferredPrimaryColumnWidthFraction)
    }
    
    /// Observable for `minimumPrimaryColumnWidth` property of `UISplitViewController` source.
    @available(iOS 8.0, *)
    public var minimumPrimaryColumnWidth: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumPrimaryColumnWidth)
    }
    
    /// Observable for `maximumPrimaryColumnWidth` property of `UISplitViewController` source.
    @available(iOS 8.0, *)
    public var maximumPrimaryColumnWidth: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.maximumPrimaryColumnWidth)
    }
    
    /// Observable for `primaryEdge` property of `UISplitViewController` source.
    @available(iOS 11.0, *)
    public var primaryEdge: AnyKeyPathObservable<Source, UISplitViewControllerPrimaryEdge> {
        return source.observable(at: \Source.primaryEdge)
    }
}
