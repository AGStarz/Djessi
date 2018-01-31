//
//  UIContextualAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIContextualAction {
    
    /// Observable for `title` property of `UIContextualAction` source.
    public var title: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `backgroundColor` property of `UIContextualAction` source.
    public var backgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.backgroundColor)
    }
    
    /// Observable for `image` property of `UIContextualAction` source.
    public var image: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
}
