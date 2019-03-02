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
    public var isEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `isSelected` property of `UIControl` source.
    public var isSelected: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelected)
    }
    
    /// Observable for `isHighlighted` property of `UIControl` source.
    public var isHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `contentVerticalAlignment` property of `UIControl` source.
    public var contentVerticalAlignment: KeyPathObservable<Source, UIControl.ContentVerticalAlignment> {
        return source.observable(at: \Source.contentVerticalAlignment)
    }
    
    /// Observable for `contentHorizontalAlignment` property of `UIControl` source.
    public var contentHorizontalAlignment: KeyPathObservable<Source, UIControl.ContentHorizontalAlignment> {
        return source.observable(at: \Source.contentHorizontalAlignment)
    }
}
