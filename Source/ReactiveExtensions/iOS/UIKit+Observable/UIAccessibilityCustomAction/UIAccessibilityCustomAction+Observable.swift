//
//  UIAccessibilityCustomAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIAccessibilityCustomAction {

    /// Observable for `name` property of `UIAccessibilityCustomAction` source.
    public var name: AnyKeyPathObservable<Source, String> {
        return source.observable(at: \Source.name)
    }
    
    /// Observable for `attributedName` property of `UIAccessibilityCustomAction` source.
    @available(iOS 11.0, *)
    public var attributedName: AnyKeyPathObservable<Source, NSAttributedString> {
        return source.observable(at: \Source.attributedName)
    }
    
    /// Observable for `target` property of `UIAccessibilityCustomAction` source.
    public var target: AnyKeyPathObservable<Source, AnyObject?> {
        return source.observable(at: \Source.target)
    }
    
    /// Observable for `selector` property of `UIAccessibilityCustomAction` source.
    public var selector: AnyKeyPathObservable<Source, Selector> {
        return source.observable(at: \Source.selector)
    }
}
