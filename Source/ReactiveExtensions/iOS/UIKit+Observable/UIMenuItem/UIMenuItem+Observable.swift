//
//  UIMenuItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIMenuItem {
    
    /// Observable for `title` property of `UIMenuItem` source.
    public var title: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `action` property of `UIMenuItem` source.
    public var action: KeyPathObservable<Source, Selector> {
        return source.observable(at: \Source.action)
    }
}
