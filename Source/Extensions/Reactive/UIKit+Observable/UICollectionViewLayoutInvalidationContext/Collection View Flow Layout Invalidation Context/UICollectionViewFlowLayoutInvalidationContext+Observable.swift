//
//  UICollectionViewFlowLayoutInvalidationContext+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UICollectionViewFlowLayoutInvalidationContext {
    
    /// Observable for `invalidateFlowLayoutDelegateMetrics` property of `UICollectionViewFlowLayoutInvalidationContext` source.
    public var invalidateFlowLayoutDelegateMetrics: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.invalidateFlowLayoutDelegateMetrics)
    }
    
    /// Observable for `invalidateFlowLayoutAttributes` property of `UICollectionViewFlowLayoutInvalidationContext` source.
    public var invalidateFlowLayoutAttributes: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.invalidateFlowLayoutAttributes)
    }
}
