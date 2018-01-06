//
//  UIAccessibilityElement+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.0, *)
extension ReactiveExtension where Source: UIAccessibilityElement {
    
    /// Observable for `accessibilityContainer` property of `UIAccessibilityElement` source.
    public var accessibilityContainer: AnyKeyPathObservable<Source, AnyObject?> {
        return source.observable(at: \Source.accessibilityContainer)
    }
    
    /// Observable for `isAccessibilityElement` property of `UIAccessibilityElement` source.
    public var isAccessibilityElement: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isAccessibilityElement)
    }
    
    /// Observable for `accessibilityLabel` property of `UIAccessibilityElement` source.
    public var accessibilityLabel: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.accessibilityLabel)
    }
    
    /// Observable for `accessibilityHint` property of `UIAccessibilityElement` source.
    public var accessibilityHint: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.accessibilityHint)
    }
    
    /// Observable for `accessibilityValue` property of `UIAccessibilityElement` source.
    public var accessibilityValue: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.accessibilityValue)
    }
    
    // accessibilityFrame: CGRect
    /// Observable for `accessibilityFrame` property of `UIAccessibilityElement` source.
    public var accessibilityFrame: AnyKeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.accessibilityFrame)
    }
    
    /// Observable for `accessibilityTraits` property of `UIAccessibilityElement` source.
    public var accessibilityTraits: AnyKeyPathObservable<Source, UIAccessibilityTraits> {
        return source.observable(at: \Source.accessibilityTraits)
    }
    
    /// Observable for `accessibilityFrameInContainerSpace` property of `UIAccessibilityElement` source.
    @available(iOS 10.0, *)
    public var accessibilityFrameInContainerSpace: AnyKeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.accessibilityFrameInContainerSpace)
    }
    
    /// Observable for `accessibilityIdentifier` property of `UIAccessibilityElement` source.
    @available(iOS 5.0, *)
    public var accessibilityIdentifier: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.accessibilityIdentifier)
    }
}
