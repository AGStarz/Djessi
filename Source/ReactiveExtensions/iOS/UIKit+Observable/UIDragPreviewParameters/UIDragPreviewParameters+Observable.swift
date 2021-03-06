//
//  UIDragPreviewParameters+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDragPreviewParameters {
    
    /// Observable for `visiblePath` property of `UIDragPreviewParameters` source.
    public var visiblePath: KeyPathObservable<Source, UIBezierPath?> {
        return source.observable(at: \Source.visiblePath)
    }
    
    /// Observable for `backgroundColor` property of `UIDragPreviewParameters` source.
    public var backgroundColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.backgroundColor)
    }
}
