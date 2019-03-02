//
//  UIProgressView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIProgressView {

    /// Observable for `progressViewStyle` property of `UIProgressView` source.
    public var progressViewStyle: KeyPathObservable<Source, UIProgressView.Style> {
        return source.observable(at: \Source.progressViewStyle)
    }
    
    /// Observable for `progress` property of `UIProgressView` source.
    public var progress: KeyPathObservable<Source, Float> {
        return source.observable(at: \Source.progress)
    }
    
    /// Observable for `progressTintColor` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var progressTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.progressTintColor)
    }
    
    /// Observable for `trackTintColor` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var trackTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.trackTintColor)
    }
    
    /// Observable for `progressImage` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var progressImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.progressImage)
    }
    
    /// Observable for `trackImage` property of `UIProgressView` source.
    @available(iOS 5.0, *)
    public var trackImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.trackImage)
    }
    
    /// Observable for `observedProgress` property of `UIProgressView` source.
    @available(iOS 9.0, *)
    public var observedProgress: KeyPathObservable<Source, Progress?> {
        return source.observable(at: \Source.observedProgress)
    }
}
