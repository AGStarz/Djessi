//
//  UISearchController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UISearchController {

    /// Observable for `isActive` property of `UISearchController` source.
    public var isActive: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isActive)
    }
    
    /// Observable for `dimsBackgroundDuringPresentation` property of `UISearchController` source.
    public var dimsBackgroundDuringPresentation: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.dimsBackgroundDuringPresentation)
    }
    
    /// Observable for `obscuresBackgroundDuringPresentation` property of `UISearchController` source.
    @available(iOS 9.1, *)
    public var obscuresBackgroundDuringPresentation: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.obscuresBackgroundDuringPresentation)
    }
    
    /// Observable for `hidesNavigationBarDuringPresentation` property of `UISearchController` source.
    public var hidesNavigationBarDuringPresentation: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesNavigationBarDuringPresentation)
    }
}
