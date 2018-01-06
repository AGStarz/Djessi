//
//  UIAccessibilityCustomRotor+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIAccessibilityCustomRotor {

    /// Observable for `name` property of `UIAccessibilityCustomRotor` source.
    public var name: AnyKeyPathObservable<Source, String> {
        return source.observable(at: \Source.name)
    }
    
    /// Observable for `attributedName` property of `UIAccessibilityCustomRotor` source.
    @available(iOS 11.0, *)
    public var attributedName: AnyKeyPathObservable<Source, NSAttributedString> {
        return source.observable(at: \Source.attributedName)
    }
    
    /// Observable for `itemSearchBlock` property of `UIAccessibilityCustomRotor` source.
    public var itemSearchBlock: AnyKeyPathObservable<Source, UIKit.UIAccessibilityCustomRotorSearch> {
        return source.observable(at: \Source.itemSearchBlock)
    }
}
