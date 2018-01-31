//
//  UIInputViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIInputViewController {
 
    /// Observable for `inputView` property of `UIInputViewController` source.
    public var inputView: KeyPathObservable<Source, UIInputView?> {
        return source.observable(at: \Source.inputView)
    }
    
    /// Observable for `primaryLanguage` property of `UIInputViewController` source.
    public var primaryLanguage: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.primaryLanguage)
    }
    
    /// Observable for `hasDictationKey` property of `UIInputViewController` source.
    public var hasDictationKey: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hasDictationKey)
    }
}
