//
//  UIWindow+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIWindow {
    
    /// Observable for `screen` property of `UIWindow` source.
    @available(iOS 3.2, *)
    public var screen: KeyPathObservable<Source, UIScreen> {
        return source.observable(at: \Source.screen)
    }
    
    /// Observable for `windowLevel` property of `UIWindow` source.
    public var windowLevel: KeyPathObservable<Source, UIWindow.Level> {
        return source.observable(at: \Source.windowLevel)
    }
    
    /// Observable for `rootViewController` property of `UIWindow` source.
    @available(iOS 4.0, *)
    public var rootViewController: KeyPathObservable<Source, UIViewController?> {
        return source.observable(at: \Source.rootViewController)
    }
}
