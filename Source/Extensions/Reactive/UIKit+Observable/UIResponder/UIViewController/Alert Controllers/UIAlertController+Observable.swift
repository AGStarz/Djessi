//
//  UIAlertController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIAlertController {

    /// Observable for `preferredAction` property of `UIAlertController` source.
    @available(iOS 9.0, *)
    public var preferredAction: AnyKeyPathObservable<Source, UIAlertAction?> {
        return source.observable(at: \Source.preferredAction)
    }
    
    /// Observable for `title` property of `UIAlertController` source.
    public var title: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `message` property of `UIAlertController` source.
    public var message: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.message)
    }
}
