//
//  UIStackView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UIStackView {
    
    /// Observable for `axis` property of `UIStackView` source.
    public var axis: AnyKeyPathObservable<Source, UILayoutConstraintAxis> {
        return source.observable(at: \Source.axis)
    }
    
    /// Observable for `distribution` property of `UIStackView` source.
    public var distribution: AnyKeyPathObservable<Source, UIStackViewDistribution> {
        return source.observable(at: \Source.distribution)
    }
    
    /// Observable for `alignment` property of `UIStackView` source.
    public var alignment: AnyKeyPathObservable<Source, UIStackViewAlignment> {
        return source.observable(at: \Source.alignment)
    }
    
    /// Observable for `spacing` property of `UIStackView` source.
    public var spacing: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.spacing)
    }
    
    /// Observable for `isBaselineRelativeArrangement` property of `UIStackView` source.
    public var isBaselineRelativeArrangement: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isBaselineRelativeArrangement)
    }
    
    /// Observable for `isLayoutMarginsRelativeArrangement` property of `UIStackView` source.
    public var isLayoutMarginsRelativeArrangement: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isLayoutMarginsRelativeArrangement)
    }
}