//
//  UIAttachmentBehavior+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIAttachmentBehavior {
    
    /// Observable for `anchorPoint` property of `UIAttachmentBehavior` source.
    public var anchorPoint: KeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.anchorPoint)
    }
    
    /// Observable for `length` property of `UIAttachmentBehavior` source.
    public var length: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.length)
    }
    
    /// Observable for `damping` property of `UIAttachmentBehavior` source.
    public var damping: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.damping)
    }
    
    /// Observable for `frequency` property of `UIAttachmentBehavior` source.
    public var frequency: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.frequency)
    }
    
    /// Observable for `frictionTorque` property of `UIAttachmentBehavior` source.
    @available(iOS 9.0, *)
    public var frictionTorque: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.frictionTorque)
    }
    
    /// Observable for `attachmentRange` property of `UIAttachmentBehavior` source.
    @available(iOS 9.0, *)
    public var attachmentRange: KeyPathObservable<Source, UIFloatRange> {
        return source.observable(at: \Source.attachmentRange)
    }
}
