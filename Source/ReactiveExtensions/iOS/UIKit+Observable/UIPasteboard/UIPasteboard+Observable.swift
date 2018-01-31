//
//  UIPasteboard+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.0, *)
extension ReactiveExtension where Source: UIPasteboard {
    
    /// Observable for `itemProviders` property of `UIPasteboard` source.
    @available(iOS 11.0, *)
    public var itemProviders: KeyPathObservable<Source, [NSItemProvider]> {
        return source.observable(at: \Source.itemProviders)
    }
    
    /// Observable for `items` property of `UIPasteboard` source.
    public var items: KeyPathObservable<Source, [[String : Any]]> {
        return source.observable(at: \Source.items)
    }
    
    /// Observable for `string` property of `UIPasteboard` source.
    public var string: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.string)
    }
    
    /// Observable for `strings` property of `UIPasteboard` source.
    public var strings: KeyPathObservable<Source, [String]?> {
        return source.observable(at: \Source.strings)
    }
    
    /// Observable for `url` property of `UIPasteboard` source.
    public var url: KeyPathObservable<Source, URL?> {
        return source.observable(at: \Source.url)
    }
    
    /// Observable for `urls` property of `UIPasteboard` source.
    public var urls: KeyPathObservable<Source, [URL]?> {
        return source.observable(at: \Source.urls)
    }
    
    /// Observable for `image` property of `UIPasteboard` source.
    public var image: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
    
    /// Observable for `images` property of `UIPasteboard` source.
    public var images: KeyPathObservable<Source, [UIImage]?> {
        return source.observable(at: \Source.images)
    }
    
    /// Observable for `color` property of `UIPasteboard` source.
    public var color: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.color)
    }
    
    /// Observable for `colors` property of `UIPasteboard` source.
    public var colors: KeyPathObservable<Source, [UIColor]?> {
        return source.observable(at: \Source.colors)
    }
}
