//
//  UITableView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITableView {
    
    /// Observable for `rowHeight` property of `UITableView` source.
    public var rowHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.rowHeight)
    }
    
    /// Observable for `sectionHeaderHeight` property of `UITableView` source.
    public var sectionHeaderHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.sectionHeaderHeight)
    }
    
    /// Observable for `sectionFooterHeight` property of `UITableView` source.
    public var sectionFooterHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.sectionFooterHeight)
    }
    
    /// Observable for `estimatedRowHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedRowHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedRowHeight)
    }
    
    /// Observable for `estimatedSectionHeaderHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedSectionHeaderHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedSectionHeaderHeight)
    }
    
    /// Observable for `estimatedSectionFooterHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedSectionFooterHeight: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedSectionFooterHeight)
    }
    
    /// Observable for `separatorInset` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var separatorInset: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.separatorInset)
    }
    
    /// Observable for `separatorInsetReference` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var separatorInsetReference: KeyPathObservable<Source, UITableViewSeparatorInsetReference> {
        return source.observable(at: \Source.separatorInsetReference)
    }
    
    /// Observable for `backgroundView` property of `UITableView` source.
    @available(iOS 3.2, *)
    public var backgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `isEditing` property of `UITableView` source.
    public var isEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditing)
    }
    
    /// Observable for `allowsSelection` property of `UITableView` source.
    @available(iOS 3.0, *)
    public var allowsSelection: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelection)
    }
    
    /// Observable for `allowsSelectionDuringEditing` property of `UITableView` source.
    public var allowsSelectionDuringEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelectionDuringEditing)
    }
    
    /// Observable for `allowsMultipleSelection` property of `UITableView` source.
    @available(iOS 5.0, *)
    public var allowsMultipleSelection: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelection)
    }
    
    /// Observable for `allowsMultipleSelectionDuringEditing` property of `UITableView` source.
    @available(iOS 5.0, *)
    public var allowsMultipleSelectionDuringEditing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelectionDuringEditing)
    }
    
    /// Observable for `sectionIndexMinimumDisplayRowCount` property of `UITableView` source.
    public var sectionIndexMinimumDisplayRowCount: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.sectionIndexMinimumDisplayRowCount)
    }
    
    /// Observable for `sectionIndexColor` property of `UITableView` source.
    @available(iOS 6.0, *)
    public var sectionIndexColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexColor)
    }
    
    /// Observable for `sectionIndexBackgroundColor` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var sectionIndexBackgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexBackgroundColor)
    }
    
    /// Observable for `sectionIndexTrackingBackgroundColor` property of `UITableView` source.
    @available(iOS 6.0, *)
    public var sectionIndexTrackingBackgroundColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexTrackingBackgroundColor)
    }
    
    /// Observable for `separatorStyle` property of `UITableView` source.
    public var separatorStyle: KeyPathObservable<Source, UITableViewCellSeparatorStyle> {
        return source.observable(at: \Source.separatorStyle)
    }
    
    /// Observable for `separatorColor` property of `UITableView` source.
    public var separatorColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.separatorColor)
    }
    
    /// Observable for `separatorEffect` property of `UITableView` source.
    @available(iOS 8.0, *)
    public var separatorEffect: KeyPathObservable<Source, UIVisualEffect?> {
        return source.observable(at: \Source.separatorEffect)
    }
    
    /// Observable for `cellLayoutMarginsFollowReadableWidth` property of `UITableView` source.
    @available(iOS 9.0, *)
    public var cellLayoutMarginsFollowReadableWidth: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.cellLayoutMarginsFollowReadableWidth)
    }
    
    /// Observable for `insetsContentViewsToSafeArea` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var insetsContentViewsToSafeArea: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.insetsContentViewsToSafeArea)
    }
    
    /// Observable for `tableHeaderView` property of `UITableView` source.
    public var tableHeaderView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.tableHeaderView)
    }
    
    /// Observable for `tableFooterView` property of `UITableView` source.
    public var tableFooterView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.tableFooterView)
    }
    
    /// Observable for `remembersLastFocusedIndexPath` property of `UITableView` source.
    @available(iOS 9.0, *)
    public var remembersLastFocusedIndexPath: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.remembersLastFocusedIndexPath)
    }
    
    /// Observable for `dragInteractionEnabled` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var dragInteractionEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.dragInteractionEnabled)
    }
    
    /// Observable for `delegate` property of `UITableView` source.
    public var tableViewDelegate: AnyTableViewDelegateProxy {
        var key = UITableViewDelegateHandler.associationKey
        
        guard let handler = objc_getAssociatedObject(source, &key) as? UITableViewDelegateHandler else {
            let newOne = UITableViewDelegateHandler(tableView: source)
            objc_setAssociatedObject(source, &key, newOne, .OBJC_ASSOCIATION_RETAIN)
            return AnyTableViewDelegateProxy(source: newOne)
        }
        
        return AnyTableViewDelegateProxy(source: handler)
    }
}
