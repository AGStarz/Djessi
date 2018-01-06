//
//  UIGraphicsImageRendererFormat+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIGraphicsImageRendererFormat {
    
    /// Observable for `prefersExtendedRange` property of `UIGraphicsImageRendererFormat` source.
    public var prefersExtendedRange: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.prefersExtendedRange)
    }
    
    /// Observable for `scale` property of `UIGraphicsImageRendererFormat` source.
    public var scale: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.scale)
    }
    
    /// Observable for `opaque` property of `UIGraphicsImageRendererFormat` source.
    public var opaque: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.opaque)
    }
}
