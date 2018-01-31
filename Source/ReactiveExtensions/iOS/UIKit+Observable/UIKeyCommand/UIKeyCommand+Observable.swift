//
//  UIKeyCommand+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 7.0, *)
extension ReactiveExtension where Source: UIKeyCommand {
    
    /// Observable for `discoverabilityTitle` property of `UIKeyCommand` source.
    @available(iOS 9.0, *)
    public var discoverabilityTitle: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.discoverabilityTitle)
    }
}
