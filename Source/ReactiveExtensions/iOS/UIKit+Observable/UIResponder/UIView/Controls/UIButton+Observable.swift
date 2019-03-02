//
//  UIButton+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIButton {
    
    /// Observable for `contentEdgeInsets` property of `UIButton` source.
    public var contentEdgeInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.contentEdgeInsets)
    }
    
    /// Observable for `titleEdgeInsets` property of `UIButton` source.
    public var titleEdgeInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.titleEdgeInsets)
    }
    
    /// Observable for `imageEdgeInsets` property of `UIButton` source.
    public var imageEdgeInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.imageEdgeInsets)
    }
    
    /// Observable for `reversesTitleShadowWhenHighlighted` property of `UIButton` source.
    public var reversesTitleShadowWhenHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.reversesTitleShadowWhenHighlighted)
    }
    
    /// Observable for `adjustsImageWhenHighlighted` property of `UIButton` source.
    public var adjustsImageWhenHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsImageWhenHighlighted)
    }
    
    /// Observable for `adjustsImageWhenDisabled` property of `UIButton` source.
    public var adjustsImageWhenDisabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsImageWhenDisabled)
    }
    
    /// Observable for `showsTouchWhenHighlighted` property of `UIButton` source.
    public var showsTouchWhenHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsTouchWhenHighlighted)
    }
    
    /// Observable for `tintColor` property of `UIButton` source.
    @available(iOS 5.0, *)
    public var tintColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
}
