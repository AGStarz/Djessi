//
//  UICollectionViewCell+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UICollectionViewCell {

    /// Observable for `isSelected` property of `UICollectionViewCell` source.
    public var isSelected: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelected)
    }
    
    /// Observable for `isHighlighted` property of `UICollectionViewCell` source.
    public var isHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `backgroundView` property of `UICollectionViewCell` source.
    public var backgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `selectedBackgroundView` property of `UICollectionViewCell` source.
    public var selectedBackgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.selectedBackgroundView)
    }
}
