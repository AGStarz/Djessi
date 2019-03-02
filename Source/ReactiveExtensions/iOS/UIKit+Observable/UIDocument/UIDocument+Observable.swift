//
//  UIDocument+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIDocument {
    
    /// Observable for `fileModificationDate` property of `UIDocument` source.
    public var fileModificationDate: KeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.fileModificationDate)
    }
    
    /// Observable for `undoManager` property of `UIDocument` source.
    public var undoManager: KeyPathObservable<Source, Optional<UndoManager>> {
        return source.observable(at: \Source.undoManager)
    }
    
    /// Observable for `userActivity` property of `UIDocument` source.
    @available(iOS 8.0, *)
    public var userActivity: KeyPathObservable<Source, NSUserActivity?> {
        return source.observable(at: \Source.userActivity)
    }
}
