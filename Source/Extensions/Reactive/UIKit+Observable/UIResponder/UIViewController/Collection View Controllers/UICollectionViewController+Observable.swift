//
//  UICollectionViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UICollectionViewController {

    /// Observable for `collectionView` property of `UICollectionViewController` source.
    public var collectionView: AnyKeyPathObservable<Source, UICollectionView?> {
        return source.observable(at: \Source.collectionView)
    }
    
    /// Observable for `clearsSelectionOnViewWillAppear` property of `UICollectionViewController` source.
    public var clearsSelectionOnViewWillAppear: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsSelectionOnViewWillAppear)
    }
    
    /// Observable for `useLayoutToLayoutNavigationTransitions` property of `UICollectionViewController` source.
    @available(iOS 7.0, *)
    public var useLayoutToLayoutNavigationTransitions: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.useLayoutToLayoutNavigationTransitions)
    }
    
    /// Observable for `installsStandardGestureForInteractiveMovement` property of `UICollectionViewController` source.
    @available(iOS 9.0, *)
    public var installsStandardGestureForInteractiveMovement: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.installsStandardGestureForInteractiveMovement)
    }
}
