//
//  UIManagedDocument+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIManagedDocument {
    
    /// Observable for `persistentStoreOptions` property of `UIManagedDocument` source.
    public var persistentStoreOptions: AnyKeyPathObservable<Source, [AnyHashable: Any]?> {
        return source.observable(at: \Source.persistentStoreOptions)
    }
    
    /// Observable for `modelConfiguration` property of `UIManagedDocument` source.
    public var modelConfiguration: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.modelConfiguration)
    }
}
