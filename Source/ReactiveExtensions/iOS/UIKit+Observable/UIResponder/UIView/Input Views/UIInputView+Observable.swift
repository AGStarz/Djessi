//
//  UIInputView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIInputView {
    
    /// Observable for `allowsSelfSizing` property of `UIInputView` source.
    @available(iOS 9.0, *)
    public var allowsSelfSizing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelfSizing)
    }
}
