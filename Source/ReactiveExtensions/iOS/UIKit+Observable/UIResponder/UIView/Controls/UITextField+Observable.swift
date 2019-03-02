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
    public var text: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `attributedText` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var attributedText: KeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedText)
    }
    
    /// Observable for `textColor` property of `UITextField` source.
    public var textColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.textColor)
    }
    
    /// Observable for `font` property of `UITextField` source.
    public var font: KeyPathObservable<Source, UIFont?> {
        return source.observable(at: \Source.font)
    }
    
    /// Observable for `textAlignment` property of `UITextField` source.
    public var textAlignment: KeyPathObservable<Source, NSTextAlignment> {
        return source.observable(at: \Source.textAlignment)
    }
    
    /// Observable for `borderStyle` property of `UITextField` source.
    public var borderStyle: KeyPathObservable<Source, UITextField.BorderStyle> {
        return source.observable(at: \Source.borderStyle)
    }
    
    /// Observable for `defaultTextAttributes` property of `UITextField` source.
    @available(iOS 7.0, *)
    public var defaultTextAttributes: KeyPathObservable<Source, [NSAttributedString.Key: Any]> {
        return source.observable(at: \Source.defaultTextAttributes)
    }
    
    /// Observable for `placeholder` property of `UITextField` source.
    public var placeholder: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.placeholder)
    }
    
    /// Observable for `attributedPlaceholder` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var attributedPlaceholder: KeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedPlaceholder)
    }
    
    /// Observable for `clearsOnBeginEditing` property of `UITextField` source.
    public var clearsOnBeginEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsOnBeginEditing)
    }
    
    /// Observable for `adjustsFontSizeToFitWidth` property of `UITextField` source.
    public var adjustsFontSizeToFitWidth: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsFontSizeToFitWidth)
    }
    
    /// Observable for `minimumFontSize` property of `UITextField` source.
    public var minimumFontSize: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumFontSize)
    }
    
    /// Observable for `background` property of `UITextField` source.
    public var background: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.background)
    }
    
    /// Observable for `disabledBackground` property of `UITextField` source.
    public var disabledBackground: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.disabledBackground)
    }
    
    /// Observable for `allowsEditingTextAttributes` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var allowsEditingTextAttributes: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsEditingTextAttributes)
    }
    
    /// Observable for `typingAttributes` property of `UITextField` source.
    @available(iOS 6.0, *)
    public var typingAttributes: KeyPathObservable<Source, [NSAttributedString.Key: Any]?> {
        return source.observable(at: \Source.typingAttributes)
    }
    
    /// Observable for `clearButtonMode` property of `UITextField` source.
    public var clearButtonMode: KeyPathObservable<Source, UITextField.ViewMode> {
        return source.observable(at: \Source.clearButtonMode)
    }
    
    /// Observable for `leftView` property of `UITextField` source.
    public var leftView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.leftView)
    }
    
    /// Observable for `leftViewMode` property of `UITextField` source.
    public var leftViewMode: KeyPathObservable<Source, UITextField.ViewMode> {
        return source.observable(at: \Source.leftViewMode)
    }
    
    /// Observable for `rightView` property of `UITextField` source.
    public var rightView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.rightView)
    }
    
    /// Observable for `rightViewMode` property of `UITextField` source.
    public var rightViewMode: KeyPathObservable<Source, UITextField.ViewMode> {
        return source.observable(at: \Source.rightViewMode)
    }
    
    /// Observable for `inputView` property of `UITextField` source.
    public var inputView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputView)
    }
    
    /// Observable for `inputAccessoryView` property of `UITextField` source.
    public var inputAccessoryView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputAccessoryView)
    }
    
    /// Observable for `clearsOnInsertion` property of `UITextField` source.
    public var clearsOnInsertion: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsOnInsertion)
    }
}
