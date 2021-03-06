//
//  UIScreen+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIScreen {
    
    /// Observable for `currentMode` property of `UIScreen` source.
    @available(iOS 3.2, *)
    public var currentMode: KeyPathObservable<Source, UIScreenMode?> {
        return source.observable(at: \Source.currentMode)
    }
    
    /// Observable for `overscanCompensation` property of `UIScreen` source.
    @available(iOS 5.0, *)
    public var overscanCompensation: KeyPathObservable<Source, UIScreen.OverscanCompensation> {
        return source.observable(at: \Source.overscanCompensation)
    }
    
    /// Observable for `brightness` property of `UIScreen` source.
    @available(iOS 5.0, *)
    public var brightness: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.brightness)
    }
    
    /// Observable for `wantsSoftwareDimming` property of `UIScreen` source.
    @available(iOS 5.0, *)
    public var wantsSoftwareDimming: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.wantsSoftwareDimming)
    }
}
