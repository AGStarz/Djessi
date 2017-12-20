//
//  UIWindow+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIWindow {
    
    /// Observable for `screen` property of `UIWindow` source.
    @available(iOS 3.2, *)
    public var screen: AnyKeyPathObservable<Source, UIScreen> {
        return source.observable(at: \Source.screen)
    }
    
    /// Observable for `windowLevel` property of `UIWindow` source.
    public var windowLevel: AnyKeyPathObservable<Source, UIWindowLevel> {
        return source.observable(at: \Source.windowLevel)
    }
    
    /// Observable for `rootViewController` property of `UIWindow` source.
    @available(iOS 4.0, *)
    public var rootViewController: AnyKeyPathObservable<Source, UIViewController?> {
        return source.observable(at: \Source.rootViewController)
    }
}
