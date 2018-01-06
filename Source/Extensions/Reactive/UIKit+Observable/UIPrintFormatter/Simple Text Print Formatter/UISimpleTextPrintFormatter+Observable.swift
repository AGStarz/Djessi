//
//  UISimpleTextPrintFormatter+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UISimpleTextPrintFormatter {
    
    /// Observable for `text` property of `UISimpleTextPrintFormatter` source.
    public var text: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `attributedText` property of `UISimpleTextPrintFormatter` source.
    @available(iOS 7.0, *)
    public var attributedText: AnyKeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedText)
    }
    
    /// Observable for `font` property of `UISimpleTextPrintFormatter` source.
    public var font: AnyKeyPathObservable<Source, UIFont?> {
        return source.observable(at: \Source.font)
    }
    
    /// Observable for `color` property of `UISimpleTextPrintFormatter` source.
    public var color: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.color)
    }
    
    /// Observable for `textAlignment` property of `UISimpleTextPrintFormatter` source.
    public var textAlignment: AnyKeyPathObservable<Source, NSTextAlignment> {
        return source.observable(at: \Source.textAlignment)
    }
}
