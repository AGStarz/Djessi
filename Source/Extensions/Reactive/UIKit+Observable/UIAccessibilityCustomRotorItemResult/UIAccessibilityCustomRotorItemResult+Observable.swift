//
//  UIAccessibilityCustomRotorItemResult+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIAccessibilityCustomRotorItemResult {
    
    /// Observable for `targetElement` property of `UIAccessibilityCustomRotorItemResult` source.
    public var targetElement: AnyKeyPathObservable<Source, NSObjectProtocol?> {
        return source.observable(at: \Source.targetElement)
    }
    
    /// Observable for `targetRange` property of `UIAccessibilityCustomRotorItemResult` source.
    public var targetRange: AnyKeyPathObservable<Source, UITextRange?> {
        return source.observable(at: \Source.targetRange)
    }
}
