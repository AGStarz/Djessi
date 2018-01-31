//
//  UIPopoverPresentationController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIPopoverPresentationController {
    
    // TODO: delegate
    
    /// Observable for `permittedArrowDirections` property of `UIPopoverPresentationController` source.
    public var permittedArrowDirections: KeyPathObservable<Source, UIPopoverArrowDirection> {
        return source.observable(at: \Source.permittedArrowDirections)
    }
    
    /// Observable for `sourceView` property of `UIPopoverPresentationController` source.
    public var sourceView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.sourceView)
    }
    
    /// Observable for `sourceRect` property of `UIPopoverPresentationController` source.
    public var sourceRect: KeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.sourceRect)
    }
    
    /// Observable for `canOverlapSourceViewRect` property of `UIPopoverPresentationController` source.
    @available(iOS 9.0, *)
    public var canOverlapSourceViewRect: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.canOverlapSourceViewRect)
    }
    
    /// Observable for `barButtonItem` property of `UIPopoverPresentationController` source.
    public var barButtonItem: KeyPathObservable<Source, UIBarButtonItem?> {
        return source.observable(at: \Source.barButtonItem)
    }
    
    /// Observable for `passthroughViews` property of `UIPopoverPresentationController` source.
    public var passthroughViews: KeyPathObservable<Source, [UIView]?> {
        return source.observable(at: \Source.passthroughViews)
    }
    
    /// Observable for `backgroundColor` property of `UIPopoverPresentationController` source.
    public var backgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.backgroundColor)
    }
    
    /// Observable for `popoverLayoutMargins` property of `UIPopoverPresentationController` source.
    public var popoverLayoutMargins: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.popoverLayoutMargins)
    }
    
    /// Observable for `popoverBackgroundViewClass` property of `UIPopoverPresentationController` source.
    public var popoverBackgroundViewClass: KeyPathObservable<Source, UIPopoverBackgroundViewMethods.Type?> {
        return source.observable(at: \Source.popoverBackgroundViewClass)
    }
}
