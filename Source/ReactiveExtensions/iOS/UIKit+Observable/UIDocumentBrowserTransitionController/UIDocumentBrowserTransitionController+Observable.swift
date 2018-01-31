//
//  UIDocumentBrowserTransitionController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDocumentBrowserTransitionController {
    
    /// Observable for `loadingProgress` property of `UIDocumentBrowserTransitionController` source.
    public var loadingProgress: KeyPathObservable<Source, Progress?> {
        return source.observable(at: \Source.loadingProgress)
    }
    
    /// Observable for `targetView` property of `UIDocumentBrowserTransitionController` source.
    public var targetView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.targetView)
    }
}
