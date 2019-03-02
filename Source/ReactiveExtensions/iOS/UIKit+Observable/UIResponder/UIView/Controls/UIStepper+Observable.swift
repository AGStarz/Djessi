//
//  UIStepper+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIStepper {
    
    /// Observable for `isContinuous` property of `UIStepper` source.
    public var isContinuous: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isContinuous)
    }
    
    /// Observable for `autorepeat` property of `UIStepper` source.
    public var autorepeat: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.autorepeat)
    }
    
    /// Observable for `wraps` property of `UIStepper` source.
    public var wraps: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.wraps)
    }
    
    /// Observable for `value` property of `UIStepper` source.
    public var value: KeyPathObservable<Source, Double> {
        return source.observable(at: \Source.value)
    }
    
    /// Observable for `minimumValue` property of `UIStepper` source.
    public var minimumValue: KeyPathObservable<Source, Double> {
        return source.observable(at: \Source.minimumValue)
    }
    
    /// Observable for `maximumValue` property of `UIStepper` source.
    public var maximumValue: KeyPathObservable<Source, Double> {
        return source.observable(at: \Source.maximumValue)
    }
    
    /// Observable for `stepValue` property of `UIStepper` source.
    public var stepValue: KeyPathObservable<Source, Double> {
        return source.observable(at: \Source.stepValue)
    }
    
    /// Observable for `tintColor` property of `UIStepper` source.
    @available(iOS 6.0, *)
    public var tintColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
}
