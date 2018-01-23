//
//  UICollectionView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UICollectionView {
    
    /// Observable for `collectionViewLayout` property of `UICollectionView` source.
    public var collectionViewLayout: AnyKeyPathObservable<Source, UICollectionViewLayout> {
        return source.observable(at: \Source.collectionViewLayout)
    }
    
    /// Observable for `isPrefetchingEnabled` property of `UICollectionView` source.
    @available(iOS 10.0, *)
    public var isPrefetchingEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isPrefetchingEnabled)
    }
    
    /// Observable for `dragInteractionEnabled` property of `UICollectionView` source.
    @available(iOS 11.0, *)
    public var dragInteractionEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.dragInteractionEnabled)
    }
    
    /// Observable for `reorderingCadence` property of `UICollectionView` source.
    @available(iOS 11.0, *)
    public var reorderingCadence: AnyKeyPathObservable<Source, UICollectionViewReorderingCadence> {
        return source.observable(at: \Source.reorderingCadence)
    }
    
    /// Observable for `backgroundView` property of `UICollectionView` source.
    public var backgroundView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `allowsSelection` property of `UICollectionView` source.
    public var allowsSelection: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelection)
    }
    
    /// Observable for `allowsMultipleSelection` property of `UICollectionView` source.
    public var allowsMultipleSelection: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelection)
    }
    
    /// Observable for `remembersLastFocusedIndexPath` property of `UICollectionView` source.
    @available(iOS 9.0, *)
    public var remembersLastFocusedIndexPath: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.remembersLastFocusedIndexPath)
    }
}
