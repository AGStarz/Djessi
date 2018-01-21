//
//  UIPercentDrivenInteractiveTransition+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIPercentDrivenInteractiveTransition {
    
    /// Observable for `completionSpeed` property of `UIPercentDrivenInteractiveTransition` source.
    public var completionSpeed: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.completionSpeed)
    }
    
    /// Observable for `completionCurve` property of `UIPercentDrivenInteractiveTransition` source.
    public var completionCurve: AnyKeyPathObservable<Source, UIViewAnimationCurve> {
        return source.observable(at: \Source.completionCurve)
    }
    
    /// Observable for `timingCurve` property of `UIPercentDrivenInteractiveTransition` source.
    @available(iOS 10.0, *)
    public var timingCurve: AnyKeyPathObservable<Source, UITimingCurveProvider?> {
        return source.observable(at: \Source.timingCurve)
    }
    
    /// Observable for `wantsInteractiveStart` property of `UIPercentDrivenInteractiveTransition` source.
    @available(iOS 10.0, *)
    public var wantsInteractiveStart: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.wantsInteractiveStart)
    }
}
