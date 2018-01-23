//
//  UITextView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITextView {
    
    /// Observable for `text` property of `UITextView` source.
    public var text: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<String>> {
        return source.observable(at: \Source.text)
    }

    /// Observable for `font` property of `UITextView` source.
    public var font: AnyKeyPathObservable<Source, UIFont?> {
        return source.observable(at: \Source.font)
    }
    
    /// Observable for `textColor` property of `UITextView` source.
    public var textColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.textColor)
    }
    
    /// Observable for `textAlignment` property of `UITextView` source.
    public var textAlignment: AnyKeyPathObservable<Source, NSTextAlignment> {
        return source.observable(at: \Source.textAlignment)
    }
    
    /// Observable for `selectedRange` property of `UITextView` source.
    public var selectedRange: AnyKeyPathObservable<Source, NSRange> {
        return source.observable(at: \Source.selectedRange)
    }
    
    /// Observable for `isEditable` property of `UITextView` source.
    public var isEditable: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditable)
    }
    
    /// Observable for `isSelectable` property of `UITextView` source.
    @available(iOS 7.0, *)
    public var isSelectable: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelectable)
    }
    
    /// Observable for `dataDetectorTypes` property of `UITextView` source.
    @available(iOS 3.0, *)
    public var dataDetectorTypes: AnyKeyPathObservable<Source, UIDataDetectorTypes> {
        return source.observable(at: \Source.dataDetectorTypes)
    }
    
    /// Observable for `allowsEditingTextAttributes` property of `UITextView` source.
    @available(iOS 6.0, *)
    public var allowsEditingTextAttributes: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsEditingTextAttributes)
    }
    
    /// Observable for `attributedText` property of `UITextView` source.
    @available(iOS 6.0, *)
    public var attributedText: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<NSAttributedString>> {
        return source.observable(at: \Source.attributedText)
    }
    
    /// Observable for `typingAttributes` property of `UITextView` source.
    @available(iOS 6.0, *)
    public var typingAttributes: AnyKeyPathObservable<Source, [String: Any]> {
        return source.observable(at: \Source.typingAttributes)
    }
    
    /// Observable for `inputView` property of `UITextView` source.
    public var inputView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputView)
    }
    
    /// Observable for `inputAccessoryView` property of `UITextView` source.
    public var inputAccessoryView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputAccessoryView)
    }
    
    /// Observable for `clearsOnInsertion` property of `UITextView` source.
    @available(iOS 6.0, *)
    public var clearsOnInsertion: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsOnInsertion)
    }
    
    /// Observable for `textContainerInset` property of `UITextView` source.
    @available(iOS 7.0, *)
    public var textContainerInset: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.textContainerInset)
    }
    
    /// Observable for `linkTextAttributes` property of `UITextView` source.
    @available(iOS 7.0, *)
    public var linkTextAttributes: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<[String: Any]>> {
        return source.observable(at: \Source.linkTextAttributes)
    }
    
    /// Observable for `selectedTextRange` property of `UITextView` source.
    @available(iOS 3.2, *)
    public var selectedTextRange: AnyKeyPathObservable<Source, UITextRange?> {
        return source.observable(at: \Source.selectedTextRange)
    }
    
    /// Observable for `markedTextStyle` property of `UITextView` source.
    public var markedTextStyle: AnyKeyPathObservable<Source, [AnyHashable: Any]?> {
        return source.observable(at: \Source.markedTextStyle)
    }
    
    /// Observable for `selectionAffinity` property of `UITextView` source.
    public var selectionAffinity: AnyKeyPathObservable<Source, UITextStorageDirection> {
        return source.observable(at: \Source.selectionAffinity)
    }
    
    /// Observable for `adjustsFontForContentSizeCategory` property of `UITextView` source.
    @available(iOS 10.0, *)
    public var adjustsFontForContentSizeCategory: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsFontForContentSizeCategory)
    }
}
