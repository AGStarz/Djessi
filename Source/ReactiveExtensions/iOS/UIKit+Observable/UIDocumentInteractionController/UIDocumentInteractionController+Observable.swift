//
//  UIDocumentInteractionController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UIDocumentInteractionController {
    
    // TODO: delegate
    
    /// Observable for `uti` property of `UIDocumentInteractionController` source.
    public var uti: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.uti)
    }
    
    /// Observable for `name` property of `UIDocumentInteractionController` source.
    public var name: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.name)
    }
    
    // annotation: Any?
    /// Observable for `annotation` property of `UIDocumentInteractionController` source.
    public var annotation: AnyKeyPathObservable<Source, Any?> {
        return source.observable(at: \Source.annotation)
    }
    
    /// Observable for `url` property of `UIDocumentInteractionController` source.
    public var url: AnyKeyPathObservable<Source, URL?> {
        return source.observable(at: \Source.url)
    }
}
