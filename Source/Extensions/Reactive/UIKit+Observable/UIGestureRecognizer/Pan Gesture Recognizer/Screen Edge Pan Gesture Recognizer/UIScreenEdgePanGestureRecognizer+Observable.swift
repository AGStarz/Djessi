//
//  UIScreenEdgePanGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIScreenEdgePanGestureRecognizer {
    
    /// Observable for `edges` property of `UIScreenEdgePanGestureRecognizer` source.
    public var edges: AnyKeyPathObservable<Source, UIRectEdge> {
        return source.observable(at: \Source.edges)
    }
}
