//
//  UICollectionViewTransitionLayout+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UICollectionViewTransitionLayout {
    
    /// Observable for `transitionProgress` property of `UICollectionViewTransitionLayout` source.
    public var transitionProgress: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.transitionProgress)
    }
}
