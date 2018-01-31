//
//  UICollisionBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UICollisionBehavior {
    
    // TODO: delegate
    
    /// Observable for `collisionMode` property of `UICollisionBehavior` source.
    public var collisionMode: KeyPathObservable<Source, UICollisionBehaviorMode> {
        return source.observable(at: \Source.collisionMode)
    }
    
    /// Observable for `translatesReferenceBoundsIntoBoundary` property of `UICollisionBehavior` source.
    public var translatesReferenceBoundsIntoBoundary: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.translatesReferenceBoundsIntoBoundary)
    }
}
