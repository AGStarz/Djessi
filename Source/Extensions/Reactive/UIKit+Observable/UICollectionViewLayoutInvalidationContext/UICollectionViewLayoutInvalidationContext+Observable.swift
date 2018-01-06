//
//  UICollectionViewLayoutInvalidationContext+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UICollectionViewLayoutInvalidationContext {
    
    /// Observable for `contentOffsetAdjustment` property of `UICollectionViewLayoutInvalidationContext` source.
    @available(iOS 8.0, *)
    public var contentOffsetAdjustment: AnyKeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.contentOffsetAdjustment)
    }
    
    /// Observable for `contentSizeAdjustment` property of `UICollectionViewLayoutInvalidationContext` source.
    @available(iOS 8.0, *)
    public var contentSizeAdjustment: AnyKeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.contentSizeAdjustment)
    }
}
