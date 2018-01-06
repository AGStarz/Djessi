//
//  UIPrintInfo+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UIPrintInfo {
    
    /// Observable for `printerID` property of `UIPrintInfo` source.
    public var printerID: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.printerID)
    }
    
    /// Observable for `jobName` property of `UIPrintInfo` source.
    public var jobName: AnyKeyPathObservable<Source, String> {
        return source.observable(at: \Source.jobName)
    }
    
    /// Observable for `outputType` property of `UIPrintInfo` source.
    public var outputType: AnyKeyPathObservable<Source, UIPrintInfoOutputType> {
        return source.observable(at: \Source.outputType)
    }
    
    /// Observable for `orientation` property of `UIPrintInfo` source.
    public var orientation: AnyKeyPathObservable<Source, UIPrintInfoOrientation> {
        return source.observable(at: \Source.orientation)
    }
    
    /// Observable for `duplex` property of `UIPrintInfo` source.
    public var duplex: AnyKeyPathObservable<Source, UIPrintInfoDuplex> {
        return source.observable(at: \Source.duplex)
    }
}
