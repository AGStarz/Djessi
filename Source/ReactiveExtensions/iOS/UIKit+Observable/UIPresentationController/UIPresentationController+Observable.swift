//
//  UIPresentationController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIPresentationController {
    
    // TODO: delegate
    
    /// Observable for `overrideTraitCollection` property of `UIPresentationController` source.
    public var overrideTraitCollection: KeyPathObservable<Source, UITraitCollection?> {
        return source.observable(at: \Source.overrideTraitCollection)
    }
}
