//
//  UISlider+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISlider {
    
    /// Observable for `value` property of `UISlider` source.
    public var value: AnyKeyPathObservable<Source, Float> {
        return source.observable(at: \Source.value)
    }
    
    /// Observable for `minimumValue` property of `UISlider` source.
    public var minimumValue: AnyKeyPathObservable<Source, Float> {
        return source.observable(at: \Source.minimumValue)
    }
    
    /// Observable for `maximumValue` property of `UISlider` source.
    public var maximumValue: AnyKeyPathObservable<Source, Float> {
        return source.observable(at: \Source.maximumValue)
    }
    
    /// Observable for `minimumValueImage` property of `UISlider` source.
    public var minimumValueImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.minimumValueImage)
    }
    
    /// Observable for `maximumValueImage` property of `UISlider` source.
    public var maximumValueImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.maximumValueImage)
    }
    
    /// Observable for `isContinuous` property of `UISlider` source.
    public var isContinuous: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isContinuous)
    }
    
    /// Observable for `minimumTrackTintColor` property of `UISlider` source.
    @available(iOS 5.0, *)
    public var minimumTrackTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.minimumTrackTintColor)
    }
    
    /// Observable for `maximumTrackTintColor` property of `UISlider` source.
    @available(iOS 5.0, *)
    public var maximumTrackTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.maximumTrackTintColor)
    }
    
    /// Observable for `thumbTintColor` property of `UISlider` source.
    @available(iOS 5.0, *)
    public var thumbTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.thumbTintColor)
    }
}
