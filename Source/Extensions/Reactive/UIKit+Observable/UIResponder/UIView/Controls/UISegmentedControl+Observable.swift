//
//  UISegmentedControl+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: - Not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISegmentedControl {
    
    /// Observable for `selectedSegmentIndex` property of `UISegmentedControl` source.
    public var selectedSegmentIndex: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.selectedSegmentIndex)
    }
    
    /// Observable for `tintColor` property of `UISegmentedControl` source.
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `isMomentary` property of `UISegmentedControl` source.
    public var isMomentary: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isMomentary)
    }
    
    /// Observable for `apportionsSegmentWidthsByContent` property of `UISegmentedControl` source.
    @available(iOS 5.0, *)
    public var apportionsSegmentWidthsByContent: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.apportionsSegmentWidthsByContent)
    }
}