//
//  UIBezierPath+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIBezierPath {
    
    /// Observable for `cgPath` property of `UIBezierPath` source.
    public var cgPath: AnyKeyPathObservable<Source, CGPath> {
        return source.observable(at: \Source.cgPath)
    }
    
    /// Observable for `lineWidth` property of `UIBezierPath` source.
    public var lineWidth: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.lineWidth)
    }
    
    /// Observable for `lineCapStyle` property of `UIBezierPath` source.
    public var lineCapStyle: AnyKeyPathObservable<Source, CGLineCap> {
        return source.observable(at: \Source.lineCapStyle)
    }
    
    /// Observable for `lineJoinStyle` property of `UIBezierPath` source.
    public var lineJoinStyle: AnyKeyPathObservable<Source, CGLineJoin> {
        return source.observable(at: \Source.lineJoinStyle)
    }
    
    /// Observable for `miterLimit` property of `UIBezierPath` source.
    public var miterLimit: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.miterLimit)
    }
    
    /// Observable for `flatness` property of `UIBezierPath` source.
    public var flatness: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.flatness)
    }
    
    /// Observable for `usesEvenOddFillRule` property of `UIBezierPath` source.
    public var usesEvenOddFillRule: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.usesEvenOddFillRule)
    }
}
