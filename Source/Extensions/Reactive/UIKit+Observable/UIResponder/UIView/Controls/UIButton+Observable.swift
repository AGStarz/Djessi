//
//  UIButton+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed, don't forget about titles/labels/images encapsulated to button

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIButton {
    
    /// Observable for `contentEdgeInsets` property of `UIButton` source.
    public var contentEdgeInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.contentEdgeInsets)
    }
    
    /// Observable for `titleEdgeInsets` property of `UIButton` source.
    public var titleEdgeInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.titleEdgeInsets)
    }
    
    /// Observable for `imageEdgeInsets` property of `UIButton` source.
    public var imageEdgeInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.imageEdgeInsets)
    }
    
    /// Observable for `reversesTitleShadowWhenHighlighted` property of `UIButton` source.
    public var reversesTitleShadowWhenHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.reversesTitleShadowWhenHighlighted)
    }
    
    /// Observable for `adjustsImageWhenHighlighted` property of `UIButton` source.
    public var adjustsImageWhenHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsImageWhenHighlighted)
    }
    
    /// Observable for `adjustsImageWhenDisabled` property of `UIButton` source.
    public var adjustsImageWhenDisabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsImageWhenDisabled)
    }
    
    /// Observable for `showsTouchWhenHighlighted` property of `UIButton` source.
    public var showsTouchWhenHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsTouchWhenHighlighted)
    }
    
    /// Observable for `tintColor` property of `UIButton` source.
//    @available(iOS 5.0, *)
//    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
//        return source.observable(at: \Source.tintColor)
//    }
}
