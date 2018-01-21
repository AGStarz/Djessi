//
//  UIDragInteraction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDragInteraction {
    
    // TODO: delegate
    
    /// Observable for `allowsSimultaneousRecognitionDuringLift` property of `UIDragInteraction` source.
    public var allowsSimultaneousRecognitionDuringLift: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSimultaneousRecognitionDuringLift)
    }
    
    /// Observable for `isEnabled` property of `UIDragInteraction` source.
    public var isEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
}
