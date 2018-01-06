//
//  UICollectionViewDropPlaceholder+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UICollectionViewDropPlaceholder {
    
    /// Observable for `previewParametersProvider` property of `UICollectionViewDropPlaceholder` source.
    public var previewParametersProvider: AnyKeyPathObservable<Source, ((UICollectionViewCell) -> UIDragPreviewParameters?)?> {
        return source.observable(at: \Source.previewParametersProvider)
    }
}
