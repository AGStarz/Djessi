//
//  UISwitch+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: investigate about -isOn: animatable property or not?

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISwitch {
    
    /// Observable for `onTintColor` property of `UISwitch` source.
    @available(iOS 5.0, *)
    public var onTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.onTintColor)
    }
    
    /// Observable for `tintColor` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `thumbTintColor` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var thumbTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.thumbTintColor)
    }
    
    /// Observable for `onImage` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var onImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.onImage)
    }
    
    /// Observable for `offImage` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var offImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.offImage)
    }
    
    /// Observable for `isOn` property of `UISwitch` source.
    public var isOn: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isOn)
    }
}
