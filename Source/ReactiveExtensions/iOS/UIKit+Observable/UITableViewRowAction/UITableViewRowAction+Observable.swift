//
//  UITableViewRowAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UITableViewRowAction {
    
    /// Observable for `title` property of `UITableViewRowAction` source.
    public var title: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `backgroundColor` property of `UITableViewRowAction` source.
    public var backgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.backgroundColor)
    }
    
    /// Observable for `backgroundEffect` property of `UITableViewRowAction` source.
    public var backgroundEffect: KeyPathObservable<Source, UIVisualEffect?> {
        return source.observable(at: \Source.backgroundEffect)
    }
}
