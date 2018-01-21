//
//  UIDropInteraction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDropInteraction {
    
    // TODO: delegate
    
    /// Observable for `allowsSimultaneousDropSessions` property of `UIDropInteraction` source.
    public var allowsSimultaneousDropSessions: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSimultaneousDropSessions)
    }
}
