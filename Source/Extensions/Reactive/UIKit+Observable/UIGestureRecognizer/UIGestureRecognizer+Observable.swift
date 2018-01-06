//
//  UIGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIGestureRecognizer {
    
    // TODO: delegate
    
    /// Observable for `isEnabled` property of `UIGestureRecognizer` source.
    public var isEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `cancelsTouchesInView` property of `UIGestureRecognizer` source.
    public var cancelsTouchesInView: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.cancelsTouchesInView)
    }
    
    /// Observable for `delaysTouchesBegan` property of `UIGestureRecognizer` source.
    public var delaysTouchesBegan: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.delaysTouchesBegan)
    }
    
    /// Observable for `delaysTouchesEnded` property of `UIGestureRecognizer` source.
    public var delaysTouchesEnded: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.delaysTouchesEnded)
    }
    
    /// Observable for `allowedTouchTypes` property of `UIGestureRecognizer` source.
    @available(iOS 9.0, *)
    public var allowedTouchTypes: AnyKeyPathObservable<Source, [NSNumber]> {
        return source.observable(at: \Source.allowedTouchTypes)
    }
    
    /// Observable for `allowedPressTypes` property of `UIGestureRecognizer` source.
    @available(iOS 9.0, *)
    public var allowedPressTypes: AnyKeyPathObservable<Source, [NSNumber]> {
        return source.observable(at: \Source.allowedPressTypes)
    }
    
    /// Observable for `requiresExclusiveTouchType` property of `UIGestureRecognizer` source.
    @available(iOS 9.2, *)
    public var requiresExclusiveTouchType: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.requiresExclusiveTouchType)
    }
    
    /// Observable for `name` property of `UIGestureRecognizer` source.
    @available(iOS 11.0, *)
    public var name: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.name)
    }
}
