//
//  UICollectionViewPlaceholder+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UICollectionViewPlaceholder {
    
    /// Observable for `cellUpdateHandler` property of `UICollectionViewPlaceholder` source.
    public var cellUpdateHandler: KeyPathObservable<Source, ((UICollectionViewCell) -> Swift.Void)?> {
        return source.observable(at: \Source.cellUpdateHandler)
    }
}
