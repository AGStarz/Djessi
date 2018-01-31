//
//  UIAlertAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIAlertAction {
    
    /// Observable for `isEnabled` property of `UIAlertAction` source.
    public var isEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
}
