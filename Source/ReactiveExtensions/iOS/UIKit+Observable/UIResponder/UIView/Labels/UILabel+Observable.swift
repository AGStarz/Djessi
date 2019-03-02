//
//  UILabel+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 19.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UILabel {

    /// Observable for `text` property of `UILabel` source.
    public var text: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `font` property of `UILabel` source.
    public var font: KeyPathObservable<Source, Optional<UIFont>> {
        return source.observable(at: \Source.font)
    }
    
    /// Observable for `textColor` property of `UILabel` source.
    public var textColor: KeyPathObservable<Source, Optional<UIColor>> {
        return source.observable(at: \Source.textColor)
    }
    
    /// Observable for `shadowColor` property of `UILabel` source.
    public var shadowColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.shadowColor)
    }
    
    /// Observable for `shadowOffset` property of `UILabel` source.
    public var shadowOffset: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.shadowOffset)
    }
    
    /// Observable for `textAlignment` property of `UILabel` source.
    public var textAlignment: KeyPathObservable<Source, NSTextAlignment> {
        return source.observable(at: \Source.textAlignment)
    }
    
    /// Observable for `lineBreakMode` property of `UILabel` source.
    public var lineBreakMode: KeyPathObservable<Source, NSLineBreakMode> {
        return source.observable(at: \Source.lineBreakMode)
    }
    
    /// Observable for `attributedText` property of `UILabel` source.
    @available(iOS 6.0, *)
    public var attributedText: KeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedText)
    }
    
    /// Observable for `highlightedTextColor` property of `UILabel` source.
    public var highlightedTextColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.highlightedTextColor)
    }
    
    /// Observable for `isHighlighted` property of `UILabel` source.
    public var isHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `isEnabled` property of `UILabel` source.
    public var isEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEnabled)
    }
    
    /// Observable for `numberOfLines` property of `UILabel` source.
    public var numberOfLines: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfLines)
    }
    
    /// Observable for `adjustsFontSizeToFitWidth` property of `UILabel` source.
    public var adjustsFontSizeToFitWidth: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsFontSizeToFitWidth)
    }
    
    /// Observable for `baselineAdjustment` property of `UILabel` source.
    public var baselineAdjustment: KeyPathObservable<Source, UIBaselineAdjustment> {
        return source.observable(at: \Source.baselineAdjustment)
    }
    
    /// Observable for `minimumScaleFactor` property of `UILabel` source.
    @available(iOS 6.0, *)
    public var minimumScaleFactor: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumScaleFactor)
    }
    
    /// Observable for `allowsDefaultTighteningForTruncation` property of `UILabel` source.
    @available(iOS 9.0, *)
    public var allowsDefaultTighteningForTruncation: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsDefaultTighteningForTruncation)
    }
    
    /// Observable for `preferredMaxLayoutWidth` property of `UILabel` source.
    @available(iOS 6.0, *)
    public var preferredMaxLayoutWidth: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.preferredMaxLayoutWidth)
    }
    
    /// Observable for `adjustsFontForContentSizeCategory` property of `UILabel` source.
    @available(iOS 10.0, *)
    public var adjustsFontForContentSizeCategory: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.adjustsFontForContentSizeCategory)
    }
}
