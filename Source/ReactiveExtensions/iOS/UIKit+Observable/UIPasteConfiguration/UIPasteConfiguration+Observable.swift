//
//  UIPasteConfiguration+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIPasteConfiguration {
    
    /// Observable for `acceptableTypeIdentifiers` property of `UIPasteConfiguration` source.
    public var acceptableTypeIdentifiers: AnyKeyPathObservable<Source, [String]> {
        return source.observable(at: \Source.acceptableTypeIdentifiers)
    }
}
