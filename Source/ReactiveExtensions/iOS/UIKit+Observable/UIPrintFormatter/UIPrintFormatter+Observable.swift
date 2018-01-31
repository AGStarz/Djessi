//
//  UIPrintFormatter+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UIPrintFormatter {
    
    /// Observable for `maximumContentHeight` property of `UIPrintFormatter` source.
    public var maximumContentHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.maximumContentHeight)
    }
    
    /// Observable for `maximumContentWidth` property of `UIPrintFormatter` source.
    public var maximumContentWidth: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.maximumContentWidth)
    }
    
    /// Observable for `contentInsets` property of `UIPrintFormatter` source.
    @available(iOS, introduced: 4.2, deprecated: 10.0, message: "Use perPageContentInsets instead.")
    public var contentInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.contentInsets)
    }
    
    /// Observable for `perPageContentInsets` property of `UIPrintFormatter` source.
    public var perPageContentInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.perPageContentInsets)
    }
    
    /// Observable for `startPage` property of `UIPrintFormatter` source.
    public var startPage: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.startPage)
    }
}
