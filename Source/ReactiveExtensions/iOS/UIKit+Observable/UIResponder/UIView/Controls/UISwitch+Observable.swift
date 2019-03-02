//
//  UISwitch+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: investigate about -isOn: animatable property or not?

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISwitch {
    
    /// Observable for `onTintColor` property of `UISwitch` source.
    @available(iOS 5.0, *)
    public var onTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.onTintColor)
    }
    
    /// Observable for `tintColor` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var tintColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `thumbTintColor` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var thumbTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.thumbTintColor)
    }
    
    /// Observable for `onImage` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var onImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.onImage)
    }
    
    /// Observable for `offImage` property of `UISwitch` source.
    @available(iOS 6.0, *)
    public var offImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.offImage)
    }
    
    /// Observable for `isOn` property of `UISwitch` source.
    public var isOn: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isOn)
    }
}
