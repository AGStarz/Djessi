//
//  UICollectionViewLayoutAttributes+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UICollectionViewLayoutAttributes {
    
    /// Observable for `frame` property of `UICollectionViewLayoutAttributes` source.
    public var frame: KeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.frame)
    }
    
    /// Observable for `center` property of `UICollectionViewLayoutAttributes` source.
    public var center: KeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.center)
    }
    
    /// Observable for `size` property of `UICollectionViewLayoutAttributes` source.
    public var size: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.size)
    }
    
    /// Observable for `transform3D` property of `UICollectionViewLayoutAttributes` source.
    public var transform3D: KeyPathObservable<Source, CATransform3D> {
        return source.observable(at: \Source.transform3D)
    }
    
    /// Observable for `bounds` property of `UICollectionViewLayoutAttributes` source.
    @available(iOS 7.0, *)
    public var bounds: KeyPathObservable<Source, CGRect> {
        return source.observable(at: \Source.bounds)
    }
    
    /// Observable for `transform` property of `UICollectionViewLayoutAttributes` source.
    @available(iOS 7.0, *)
    public var transform: KeyPathObservable<Source, CGAffineTransform> {
        return source.observable(at: \Source.transform)
    }
    
    /// Observable for `alpha` property of `UICollectionViewLayoutAttributes` source.
    public var alpha: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.alpha)
    }
    
    /// Observable for `zIndex` property of `UICollectionViewLayoutAttributes` source.
    public var zIndex: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.zIndex)
    }
    
    /// Observable for `isHidden` property of `UICollectionViewLayoutAttributes` source.
    public var isHidden: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHidden)
    }
    
    /// Observable for `indexPath` property of `UICollectionViewLayoutAttributes` source.
    public var indexPath: KeyPathObservable<Source, IndexPath> {
        return source.observable(at: \Source.indexPath)
    }
}
