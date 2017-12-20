//
//  UIProgressView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIProgressView {

    /// Observable for `progressViewStyle` property of `UIProgressView` source.
    public var progressViewStyle: AnyKeyPathObservable<Source, UIProgressViewStyle> {
        return source.observable(at: \Source.progressViewStyle)
    }
    
    /// Observable for `progress` property of `UIProgressView` source.
    public var progress: AnyKeyPathObservable<Source, Float> {
        return source.observable(at: \Source.progress)
    }
    
    /// Observable for `progressTintColor` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var progressTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.progressTintColor)
    }
    
    /// Observable for `trackTintColor` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var trackTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.trackTintColor)
    }
    
    /// Observable for `progressImage` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var progressImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.progressImage)
    }
    
    /// Observable for `trackImage` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var trackImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.trackImage)
    }
    
    /// Observable for `observedProgress` property of `UIProgressView` source.
    @available(iOS 9.0, *)
    public var observedProgress: AnyKeyPathObservable<Source, Progress?> {
        return source.observable(at: \Source.observedProgress)
    }
}
