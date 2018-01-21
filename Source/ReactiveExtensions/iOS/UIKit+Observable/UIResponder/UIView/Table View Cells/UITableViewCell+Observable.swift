//
//  UITableViewCell+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITableViewCell {
    
    /// Observable for `backgroundView` property of `UITableViewCell` source.
    public var backgroundView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `selectedBackgroundView` property of `UITableViewCell` source.
    public var selectedBackgroundView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.selectedBackgroundView)
    }
    
    /// Observable for `multipleSelectionBackgroundView` property of `UITableViewCell` source.
    @available(iOS 5.0, *)
    public var multipleSelectionBackgroundView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.multipleSelectionBackgroundView)
    }
    
    /// Observable for `selectionStyle` property of `UITableViewCell` source.
    public var selectionStyle: AnyKeyPathObservable<Source, UITableViewCellSelectionStyle> {
        return source.observable(at: \Source.selectionStyle)
    }
    
    /// Observable for `isSelected` property of `UITableViewCell` source.
    public var isSelected: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelected)
    }
    
    /// Observable for `isHighlighted` property of `UITableViewCell` source.
    public var isHighlighted: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `showsReorderControl` property of `UITableViewCell` source.
    public var showsReorderControl: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsReorderControl)
    }
    
    /// Observable for `shouldIndentWhileEditing` property of `UITableViewCell` source.
    public var shouldIndentWhileEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.shouldIndentWhileEditing)
    }
    
    /// Observable for `accessoryType` property of `UITableViewCell` source.
    public var accessoryType: AnyKeyPathObservable<Source, UITableViewCellAccessoryType> {
        return source.observable(at: \Source.accessoryType)
    }
    
    /// Observable for `accessoryView` property of `UITableViewCell` source.
    public var accessoryView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.accessoryView)
    }
    
    /// Observable for `editingAccessoryType` property of `UITableViewCell` source.
    public var editingAccessoryType: AnyKeyPathObservable<Source, UITableViewCellAccessoryType> {
        return source.observable(at: \Source.editingAccessoryType)
    }
    
    /// Observable for `editingAccessoryView` property of `UITableViewCell` source.
    public var editingAccessoryView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.editingAccessoryView)
    }
    
    /// Observable for `indentationLevel` property of `UITableViewCell` source.
    public var indentationLevel: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.indentationLevel)
    }
    
    /// Observable for `indentationWidth` property of `UITableViewCell` source.
    public var indentationWidth: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.indentationWidth)
    }
    
    /// Observable for `separatorInset` property of `UITableViewCell` source.
    @available(iOS 7.0, *)
    public var separatorInset: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.separatorInset)
    }
    
    /// Observable for `isEditing` property of `UITableViewCell` source.
    public var isEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditing)
    }
    
    /// Observable for `focusStyle` property of `UITableViewCell` source.
    @available(iOS 9.0, *)
    public var focusStyle: AnyKeyPathObservable<Source, UITableViewCellFocusStyle> {
        return source.observable(at: \Source.focusStyle)
    }
    
    /// Observable for `userInteractionEnabledWhileDragging` property of `UITableViewCell` source.
    @available(iOS 11.0, *)
    public var userInteractionEnabledWhileDragging: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.userInteractionEnabledWhileDragging)
    }
}
