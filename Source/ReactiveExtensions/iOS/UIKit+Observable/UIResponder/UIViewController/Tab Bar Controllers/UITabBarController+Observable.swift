//
//  UITabBarController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITabBarController {

    /// Observable for `viewControllers` property of `UITabBarController` source.
    public var viewControllers: KeyPathObservable<Source, [UIViewController]?> {
        return source.observable(at: \Source.viewControllers)
    }
    
    /// Observable for `selectedViewController` property of `UITabBarController` source.
    public var selectedViewController: KeyPathObservable<Source, UIViewController?> {
        return source.observable(at: \Source.selectedViewController)
    }
    
    /// Observable for `selectedIndex` property of `UITabBarController` source.
    public var selectedIndex: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.selectedIndex)
    }
    
    /// Observable for `customizableViewControllers` property of `UITabBarController` source.
    public var customizableViewControllers: KeyPathObservable<Source, [UIViewController]?> {
        return source.observable(at: \Source.customizableViewControllers)
    }
}
