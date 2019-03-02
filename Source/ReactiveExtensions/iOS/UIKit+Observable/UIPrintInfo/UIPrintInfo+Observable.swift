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
    public var printerID: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.printerID)
    }
    
    /// Observable for `jobName` property of `UIPrintInfo` source.
    public var jobName: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.jobName)
    }
    
    /// Observable for `outputType` property of `UIPrintInfo` source.
    public var outputType: KeyPathObservable<Source, UIPrintInfo.OutputType> {
        return source.observable(at: \Source.outputType)
    }
    
    /// Observable for `orientation` property of `UIPrintInfo` source.
    public var orientation: KeyPathObservable<Source, UIPrintInfo.Orientation> {
        return source.observable(at: \Source.orientation)
    }
    
    /// Observable for `duplex` property of `UIPrintInfo` source.
    public var duplex: KeyPathObservable<Source, UIPrintInfo.Duplex> {
        return source.observable(at: \Source.duplex)
    }
}
