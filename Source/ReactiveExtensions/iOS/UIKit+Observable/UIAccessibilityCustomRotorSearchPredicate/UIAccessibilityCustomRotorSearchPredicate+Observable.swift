//
//  UIAccessibilityCustomRotorSearchPredicate+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIAccessibilityCustomRotorSearchPredicate {
    
    /// Observable for `currentItem` property of `UIAccessibilityCustomRotorSearchPredicate` source.
    public var currentItem: KeyPathObservable<Source, UIAccessibilityCustomRotorItemResult> {
        return source.observable(at: \Source.currentItem)
    }
    
    /// Observable for `searchDirection` property of `UIAccessibilityCustomRotorSearchPredicate` source.
    public var searchDirection: KeyPathObservable<Source, UIAccessibilityCustomRotor.Direction> {
        return source.observable(at: \Source.searchDirection)
    }
}
