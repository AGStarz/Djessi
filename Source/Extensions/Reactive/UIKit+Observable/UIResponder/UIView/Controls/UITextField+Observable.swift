//
//  UITextField+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: investigate about delegate

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITextField {

    /// Observable for `text` property of `UITextField` source.
    public var text: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `attributedText` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var attributedText: AnyKeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedText)
    }
    
    /// Observable for `textColor` property of `UITextField` source.
    public var textColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.textColor)
    }
    
    /// Observable for `font` property of `UITextField` source.
    public var font: AnyKeyPathObservable<Source, UIFont?> {
        return source.observable(at: \Source.font)
    }
    
    /// Observable for `textAlignment` property of `UITextField` source.
    public var textAlignment: AnyKeyPathObservable<Source, NSTextAlignment> {
        return source.observable(at: \Source.textAlignment)
    }
    
    /// Observable for `borderStyle` property of `UITextField` source.
    public var borderStyle: AnyKeyPathObservable<Source, UITextBorderStyle> {
        return source.observable(at: \Source.borderStyle)
    }
    
    /// Observable for `defaultTextAttributes` property of `UITextField` source.
    @available(iOS 7.0, *)
    public var defaultTextAttributes: AnyKeyPathObservable<Source, [String: Any]> {
        return source.observable(at: \Source.defaultTextAttributes)
    }
    
    /// Observable for `placeholder` property of `UITextField` source.
    public var placeholder: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.placeholder)
    }
    
    /// Observable for `attributedPlaceholder` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var attributedPlaceholder: AnyKeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedPlaceholder)
    }
    
    /// Observable for `clearsOnBeginEditing` property of `UITextField` source.
    public var clearsOnBeginEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsOnBeginEditing)
    }
    
    /// Observable for `adjustsFontSizeToFitWidth` property of `UITextField` source.
    public var adjustsFontSizeToFitWidth: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsFontSizeToFitWidth)
    }
    
    /// Observable for `minimumFontSize` property of `UITextField` source.
    public var minimumFontSize: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumFontSize)
    }
    
    /// Observable for `background` property of `UITextField` source.
    public var background: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.background)
    }
    
    /// Observable for `disabledBackground` property of `UITextField` source.
    public var disabledBackground: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.disabledBackground)
    }
    
    /// Observable for `allowsEditingTextAttributes` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var allowsEditingTextAttributes: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsEditingTextAttributes)
    }
    
    /// Observable for `typingAttributes` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var typingAttributes: AnyKeyPathObservable<Source, [String: Any]?> {
        return source.observable(at: \Source.typingAttributes)
    }
    
    /// Observable for `clearButtonMode` property of `UITextField` source.
    public var clearButtonMode: AnyKeyPathObservable<Source, UITextFieldViewMode> {
        return source.observable(at: \Source.clearButtonMode)
    }
    
    /// Observable for `leftView` property of `UITextField` source.
    public var leftView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.leftView)
    }
    
    /// Observable for `leftViewMode` property of `UITextField` source.
    public var leftViewMode: AnyKeyPathObservable<Source, UITextFieldViewMode> {
        return source.observable(at: \Source.leftViewMode)
    }
    
    /// Observable for `rightView` property of `UITextField` source.
    public var rightView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.rightView)
    }
    
    /// Observable for `rightViewMode` property of `UITextField` source.
    public var rightViewMode: AnyKeyPathObservable<Source, UITextFieldViewMode> {
        return source.observable(at: \Source.rightViewMode)
    }
    
    /// Observable for `inputView` property of `UITextField` source.
    public var inputView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputView)
    }
    
    /// Observable for `inputAccessoryView` property of `UITextField` source.
    public var inputAccessoryView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputAccessoryView)
    }
    
    /// Observable for `clearsOnInsertion` property of `UITextField` source.
    public var clearsOnInsertion: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsOnInsertion)
    }
}
