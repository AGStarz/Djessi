//
//  UIPopoverController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS, introduced: 3.2, deprecated: 9.0, message: "UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
extension ReactiveExtension where Source: UIPopoverController {
    
    /// Observable for `contentViewController` property of `UIPopoverController` source.
    public var contentViewController: AnyKeyPathObservable<Source, UIViewController> {
        return source.observable(at: \Source.contentViewController)
    }
    
    /// Observable for `contentSize` property of `UIPopoverController` source.
    public var contentSize: AnyKeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.contentSize)
    }
    
    /// Observable for `passthroughViews` property of `UIPopoverController` source.
    public var passthroughViews: AnyKeyPathObservable<Source, [UIView]?> {
        return source.observable(at: \Source.passthroughViews)
    }
    
    /// Observable for `backgroundColor` property of `UIPopoverController` source.
    @available(iOS 7.0, *)
    public var backgroundColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.backgroundColor)
    }
    
    /// Observable for `layoutMargins` property of `UIPopoverController` source.
    @available(iOS 5.0, *)
    public var layoutMargins: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.layoutMargins)
    }
    
    /// Observable for `backgroundViewClass` property of `UIPopoverController` source.
    @available(iOS 5.0, *)
    public var backgroundViewClass: AnyKeyPathObservable<Source, Swift.AnyClass?> {
        return source.observable(at: \Source.backgroundViewClass)
    }
}
