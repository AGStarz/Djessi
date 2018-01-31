//
//  UIBarItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIBarItem {
    
    /// Observable for `isEnabled` property of `UIBarItem` source.
    public var isEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `title` property of `UIBarItem` source.
    public var title: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `image` property of `UIBarItem` source.
    public var image: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
    
    /// Observable for `landscapeImagePhone` property of `UIBarItem` source.
    @available(iOS 5.0, *)
    public var landscapeImagePhone: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.landscapeImagePhone)
    }
    
    /// Observable for `largeContentSizeImage` property of `UIBarItem` source.
    @available(iOS 11.0, *)
    public var largeContentSizeImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.largeContentSizeImage)
    }
    
    /// Observable for `imageInsets` property of `UIBarItem` source.
    public var imageInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.imageInsets)
    }
    
    /// Observable for `landscapeImagePhoneInsets` property of `UIBarItem` source.
    @available(iOS 5.0, *)
    public var landscapeImagePhoneInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.landscapeImagePhoneInsets)
    }
    
    /// Observable for `largeContentSizeImageInsets` property of `UIBarItem` source.
    @available(iOS 11.0, *)
    public var largeContentSizeImageInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.largeContentSizeImageInsets)
    }
    
    /// Observable for `tag` property of `UIBarItem` source.
    public var tag: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.tag)
    }
}
