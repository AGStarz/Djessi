//
//  UIToolbar+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIToolbar {
    
    /// Observable for `barStyle` property of `UIToolbar` source.
    public var barStyle: AnyKeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `items` property of `UIToolbar` source.
    public var items: AnyKeyPathObservable<Source, [UIBarButtonItem]?> {
        return source.observable(at: \Source.items)
    }
    
    /// Observable for `isTranslucent` property of `UIToolbar` source.
    @available(iOS 3.0, *)
    public var isTranslucent: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
    
    /// Observable for `tintColor` property of `UIToolbar` source.
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UIToolbar` source.
    @available(iOS 7.0, *)
    public var barTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
}