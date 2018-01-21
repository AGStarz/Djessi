//
//  UIDocumentBrowserAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDocumentBrowserAction {
    
    /// Observable for `image` property of `UIDocumentBrowserAction` source.
    public var image: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
    
    /// Observable for `supportedContentTypes` property of `UIDocumentBrowserAction` source.
    public var supportedContentTypes: AnyKeyPathObservable<Source, [String]> {
        return source.observable(at: \Source.supportedContentTypes)
    }
    
    /// Observable for `supportsMultipleItems` property of `UIDocumentBrowserAction` source.
    public var supportsMultipleItems: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.supportsMultipleItems)
    }
}
