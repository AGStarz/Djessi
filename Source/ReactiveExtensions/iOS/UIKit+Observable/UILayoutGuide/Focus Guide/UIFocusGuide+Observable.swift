//
//  UIFocusGuide+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UIFocusGuide {
    
    /// Observable for `isEnabled` property of `UIFocusGuide` source.
    public var isEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `preferredFocusEnvironments` property of `UIFocusGuide` source.
    @available(iOS 10.0, *)
    public var preferredFocusEnvironments: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<[UIFocusEnvironment]>> {
        return source.observable(at: \Source.preferredFocusEnvironments)
    }
    
    /// Observable for `preferredFocusedView` property of `UIFocusGuide` source.
    @available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use -preferredFocusEnvironments instead.")
    public var preferredFocusedView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.preferredFocusedView)
    }
}
