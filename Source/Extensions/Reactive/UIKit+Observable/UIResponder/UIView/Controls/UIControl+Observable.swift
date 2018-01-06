//
//  UIControl+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIControl {
    
    /// Observable for `isEnabled` property of `UIControl` source.
    public var isEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `isSelected` property of `UIControl` source.
    public var isSelected: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelected)
    }
    
    /// Observable for `isHighlighted` property of `UIControl` source.
    public var isHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `contentVerticalAlignment` property of `UIControl` source.
    public var contentVerticalAlignment: AnyKeyPathObservable<Source, UIControlContentVerticalAlignment> {
        return source.observable(at: \Source.contentVerticalAlignment)
    }
    
    /// Observable for `contentHorizontalAlignment` property of `UIControl` source.
    public var contentHorizontalAlignment: AnyKeyPathObservable<Source, UIControlContentHorizontalAlignment> {
        return source.observable(at: \Source.contentHorizontalAlignment)
    }
}
