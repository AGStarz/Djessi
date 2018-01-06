//
//  UIPrintPageRenderer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UIPrintPageRenderer {
    
    /// Observable for `headerHeight` property of `UIPrintPageRenderer` source.
    public var headerHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.headerHeight)
    }
    
    /// Observable for `footerHeight` property of `UIPrintPageRenderer` source.
    public var footerHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.footerHeight)
    }
    
    /// Observable for `printFormatters` property of `UIPrintPageRenderer` source.
    public var printFormatters: AnyKeyPathObservable<Source, [UIPrintFormatter]?> {
        return source.observable(at: \Source.printFormatters)
    }
}
