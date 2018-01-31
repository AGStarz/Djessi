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
    public var backgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `selectedBackgroundView` property of `UITableViewCell` source.
    public var selectedBackgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.selectedBackgroundView)
    }
    
    /// Observable for `multipleSelectionBackgroundView` property of `UITableViewCell` source.
    @available(iOS 5.0, *)
    public var multipleSelectionBackgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.multipleSelectionBackgroundView)
    }
    
    /// Observable for `selectionStyle` property of `UITableViewCell` source.
    public var selectionStyle: KeyPathObservable<Source, UITableViewCellSelectionStyle> {
        return source.observable(at: \Source.selectionStyle)
    }
    
    /// Observable for `isSelected` property of `UITableViewCell` source.
    public var isSelected: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSelected)
    }
    
    /// Observable for `isHighlighted` property of `UITableViewCell` source.
    public var isHighlighted: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isHighlighted)
    }
    
    /// Observable for `showsReorderControl` property of `UITableViewCell` source.
    public var showsReorderControl: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsReorderControl)
    }
    
    /// Observable for `shouldIndentWhileEditing` property of `UITableViewCell` source.
    public var shouldIndentWhileEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.shouldIndentWhileEditing)
    }
    
    /// Observable for `accessoryType` property of `UITableViewCell` source.
    public var accessoryType: KeyPathObservable<Source, UITableViewCellAccessoryType> {
        return source.observable(at: \Source.accessoryType)
    }
    
    /// Observable for `accessoryView` property of `UITableViewCell` source.
    public var accessoryView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.accessoryView)
    }
    
    /// Observable for `editingAccessoryType` property of `UITableViewCell` source.
    public var editingAccessoryType: KeyPathObservable<Source, UITableViewCellAccessoryType> {
        return source.observable(at: \Source.editingAccessoryType)
    }
    
    /// Observable for `editingAccessoryView` property of `UITableViewCell` source.
    public var editingAccessoryView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.editingAccessoryView)
    }
    
    /// Observable for `indentationLevel` property of `UITableViewCell` source.
    public var indentationLevel: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.indentationLevel)
    }
    
    /// Observable for `indentationWidth` property of `UITableViewCell` source.
    public var indentationWidth: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.indentationWidth)
    }
    
    /// Observable for `separatorInset` property of `UITableViewCell` source.
    @available(iOS 7.0, *)
    public var separatorInset: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.separatorInset)
    }
    
    /// Observable for `isEditing` property of `UITableViewCell` source.
    public var isEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditing)
    }
    
    /// Observable for `focusStyle` property of `UITableViewCell` source.
    @available(iOS 9.0, *)
    public var focusStyle: KeyPathObservable<Source, UITableViewCellFocusStyle> {
        return source.observable(at: \Source.focusStyle)
    }
    
    /// Observable for `userInteractionEnabledWhileDragging` property of `UITableViewCell` source.
    @available(iOS 11.0, *)
    public var userInteractionEnabledWhileDragging: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.userInteractionEnabledWhileDragging)
    }
}
