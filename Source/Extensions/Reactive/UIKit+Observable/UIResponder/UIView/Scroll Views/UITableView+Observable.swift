//
//  UITableView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITableView {
    
    /// Observable for `rowHeight` property of `UITableView` source.
    public var rowHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.rowHeight)
    }
    
    /// Observable for `sectionHeaderHeight` property of `UITableView` source.
    public var sectionHeaderHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.sectionHeaderHeight)
    }
    
    /// Observable for `sectionFooterHeight` property of `UITableView` source.
    public var sectionFooterHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.sectionFooterHeight)
    }
    
    /// Observable for `estimatedRowHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedRowHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedRowHeight)
    }
    
    /// Observable for `estimatedSectionHeaderHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedSectionHeaderHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedSectionHeaderHeight)
    }
    
    /// Observable for `estimatedSectionFooterHeight` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var estimatedSectionFooterHeight: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.estimatedSectionFooterHeight)
    }
    
    /// Observable for `separatorInset` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var separatorInset: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.separatorInset)
    }
    
    /// Observable for `separatorInsetReference` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var separatorInsetReference: AnyKeyPathObservable<Source, UITableViewSeparatorInsetReference> {
        return source.observable(at: \Source.separatorInsetReference)
    }
    
    /// Observable for `backgroundView` property of `UITableView` source.
    @available(iOS 3.2, *)
    public var backgroundView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
    
    /// Observable for `isEditing` property of `UITableView` source.
    public var isEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditing)
    }
    
    /// Observable for `allowsSelection` property of `UITableView` source.
    @available(iOS 3.0, *)
    public var allowsSelection: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelection)
    }
    
    /// Observable for `allowsSelectionDuringEditing` property of `UITableView` source.
    public var allowsSelectionDuringEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsSelectionDuringEditing)
    }
    
    /// Observable for `allowsMultipleSelection` property of `UITableView` source.
    @available(iOS 5.0, *)
    public var allowsMultipleSelection: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelection)
    }
    
    /// Observable for `allowsMultipleSelectionDuringEditing` property of `UITableView` source.
    @available(iOS 5.0, *)
    public var allowsMultipleSelectionDuringEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelectionDuringEditing)
    }
    
    /// Observable for `sectionIndexMinimumDisplayRowCount` property of `UITableView` source.
    public var sectionIndexMinimumDisplayRowCount: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.sectionIndexMinimumDisplayRowCount)
    }
    
    /// Observable for `sectionIndexColor` property of `UITableView` source.
    @available(iOS 6.0, *)
    public var sectionIndexColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexColor)
    }
    
    /// Observable for `sectionIndexBackgroundColor` property of `UITableView` source.
    @available(iOS 7.0, *)
    public var sectionIndexBackgroundColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexBackgroundColor)
    }
    
    /// Observable for `sectionIndexTrackingBackgroundColor` property of `UITableView` source.
    @available(iOS 6.0, *)
    public var sectionIndexTrackingBackgroundColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.sectionIndexTrackingBackgroundColor)
    }
    
    /// Observable for `separatorStyle` property of `UITableView` source.
    public var separatorStyle: AnyKeyPathObservable<Source, UITableViewCellSeparatorStyle> {
        return source.observable(at: \Source.separatorStyle)
    }
    
    /// Observable for `separatorColor` property of `UITableView` source.
    public var separatorColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.separatorColor)
    }
    
    /// Observable for `separatorEffect` property of `UITableView` source.
    @available(iOS 8.0, *)
    public var separatorEffect: AnyKeyPathObservable<Source, UIVisualEffect?> {
        return source.observable(at: \Source.separatorEffect)
    }
    
    /// Observable for `cellLayoutMarginsFollowReadableWidth` property of `UITableView` source.
    @available(iOS 9.0, *)
    public var cellLayoutMarginsFollowReadableWidth: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.cellLayoutMarginsFollowReadableWidth)
    }
    
    /// Observable for `insetsContentViewsToSafeArea` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var insetsContentViewsToSafeArea: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.insetsContentViewsToSafeArea)
    }
    
    /// Observable for `tableHeaderView` property of `UITableView` source.
    public var tableHeaderView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.tableHeaderView)
    }
    
    /// Observable for `tableFooterView` property of `UITableView` source.
    public var tableFooterView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.tableFooterView)
    }
    
    /// Observable for `remembersLastFocusedIndexPath` property of `UITableView` source.
    @available(iOS 9.0, *)
    public var remembersLastFocusedIndexPath: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.remembersLastFocusedIndexPath)
    }
    
    /// Observable for `dragInteractionEnabled` property of `UITableView` source.
    @available(iOS 11.0, *)
    public var dragInteractionEnabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.dragInteractionEnabled)
    }
}
