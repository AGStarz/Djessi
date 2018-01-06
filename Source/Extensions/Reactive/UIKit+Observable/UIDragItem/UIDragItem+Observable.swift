//
//  UIDragItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDragItem {
    
    /// Observable for `localObject` property of `UIDragItem` source.
    public var localObject: AnyKeyPathObservable<Source, Any?> {
        return source.observable(at: \Source.localObject)
    }
    
    /// Observable for `previewProvider` property of `UIDragItem` source.
    public var previewProvider: AnyKeyPathObservable<Source, (() -> UIDragPreview?)?> {
        return source.observable(at: \Source.previewProvider)
    }
}
