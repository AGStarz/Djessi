//
//  UIMenuController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.0, *)
extension ReactiveExtension where Source: UIMenuController {
    
    /// Observable for `isMenuVisible` property of `UIMenuController` source.
    public var isMenuVisible: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isMenuVisible)
    }
    
    /// Observable for `arrowDirection` property of `UIMenuController` source.
    @available(iOS 3.2, *)
    public var arrowDirection: AnyKeyPathObservable<Source, UIMenuControllerArrowDirection> {
        return source.observable(at: \Source.arrowDirection)
    }
    
    /// Observable for `menuItems` property of `UIMenuController` source.
    @available(iOS 3.2, *)
    public var menuItems: AnyKeyPathObservable<Source, [UIMenuItem]?> {
        return source.observable(at: \Source.menuItems)
    }
}
