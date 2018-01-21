//
//  UIDevice+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIDevice {
    
    /// Observable for `isBatteryMonitoringEnabled` property of `UIDevice` source.
    @available(iOS 3.0, *)
    public var isBatteryMonitoringEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isBatteryMonitoringEnabled)
    }
    
    /// Observable for `isProximityMonitoringEnabled` property of `UIDevice` source.
    @available(iOS 3.0, *)
    public var isProximityMonitoringEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isProximityMonitoringEnabled)
    }
}
