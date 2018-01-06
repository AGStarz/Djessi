//
//  UIDynamicBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIDynamicBehavior {
    
    /// Observable for `action` property of `UIDynamicBehavior` source.
    public var action: AnyKeyPathObservable<Source, (() -> Swift.Void)?> {
        return source.observable(at: \Source.action)
    }
}
