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
    public var isEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `title` property of `UIBarItem` source.
    public var title: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `image` property of `UIBarItem` source.
    public var image: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.image)
    }
    
    /// Observable for `landscapeImagePhone` property of `UIBarItem` source.
    @available(iOS 5.0, *)
    public var landscapeImagePhone: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.landscapeImagePhone)
    }
    
    /// Observable for `largeContentSizeImage` property of `UIBarItem` source.
    @available(iOS 11.0, *)
    public var largeContentSizeImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.largeContentSizeImage)
    }
    
    /// Observable for `imageInsets` property of `UIBarItem` source.
    public var imageInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.imageInsets)
    }
    
    /// Observable for `landscapeImagePhoneInsets` property of `UIBarItem` source.
    @available(iOS 5.0, *)
    public var landscapeImagePhoneInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.landscapeImagePhoneInsets)
    }
    
    /// Observable for `largeContentSizeImageInsets` property of `UIBarItem` source.
    @available(iOS 11.0, *)
    public var largeContentSizeImageInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.largeContentSizeImageInsets)
    }
    
    /// Observable for `tag` property of `UIBarItem` source.
    public var tag: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.tag)
    }
}
