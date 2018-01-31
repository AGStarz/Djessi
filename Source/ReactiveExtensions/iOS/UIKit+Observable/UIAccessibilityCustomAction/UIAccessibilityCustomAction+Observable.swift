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
    public var name: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.name)
    }
    
    /// Observable for `attributedName` property of `UIAccessibilityCustomAction` source.
    @available(iOS 11.0, *)
    public var attributedName: KeyPathObservable<Source, NSAttributedString> {
        return source.observable(at: \Source.attributedName)
    }
    
    /// Observable for `target` property of `UIAccessibilityCustomAction` source.
    public var target: KeyPathObservable<Source, AnyObject?> {
        return source.observable(at: \Source.target)
    }
    
    /// Observable for `selector` property of `UIAccessibilityCustomAction` source.
    public var selector: KeyPathObservable<Source, Selector> {
        return source.observable(at: \Source.selector)
    }
}
