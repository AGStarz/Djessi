//
//  UIScrollView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 22.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIScrollView {
    
    /// Observable for `contentOffset` property of `UIScrollView` source.
    public var contentOffset: KeyPathObservable<Source, CGPoint> {
        return source.observable(at: \Source.contentOffset)
    }
    
    /// Observable for `contentSize` property of `UIScrollView` source.
    public var contentSize: KeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.contentSize)
    }
    
    /// Observable for `contentInset` property of `UIScrollView` source.
    public var contentInset: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.contentInset)
    }
    
    /// Observable for `contentInsetAdjustmentBehavior` property of `UIScrollView` source.
    @available(iOS 11.0, *)
    public var contentInsetAdjustmentBehavior: KeyPathObservable<Source, UIScrollViewContentInsetAdjustmentBehavior> {
        return source.observable(at: \Source.contentInsetAdjustmentBehavior)
    }
    
    /// Observable for `isDirectionalLockEnabled` property of `UIScrollView` source.
    public var isDirectionalLockEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isDirectionalLockEnabled)
    }
    
    /// Observable for `bounces` property of `UIScrollView` source.
    public var bounces: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.bounces)
    }
    
    /// Observable for `alwaysBounceVertical` property of `UIScrollView` source.
    public var alwaysBounceVertical: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.alwaysBounceVertical)
    }
    
    /// Observable for `alwaysBounceHorizontal` property of `UIScrollView` source.
    public var alwaysBounceHorizontal: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.alwaysBounceHorizontal)
    }
    
    /// Observable for `isPagingEnabled` property of `UIScrollView` source.
    public var isPagingEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isPagingEnabled)
    }
    
    /// Observable for `isScrollEnabled` property of `UIScrollView` source.
    public var isScrollEnabled: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isScrollEnabled)
    }
    
    /// Observable for `showsHorizontalScrollIndicator` property of `UIScrollView` source.
    public var showsHorizontalScrollIndicator: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsHorizontalScrollIndicator)
    }
    
    /// Observable for `showsVerticalScrollIndicator` property of `UIScrollView` source.
    public var showsVerticalScrollIndicator: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsVerticalScrollIndicator)
    }
    
    /// Observable for `scrollIndicatorInsets` property of `UIScrollView` source.
    public var scrollIndicatorInsets: KeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.scrollIndicatorInsets)
    }
    
    /// Observable for `indicatorStyle` property of `UIScrollView` source.
    public var indicatorStyle: KeyPathObservable<Source, UIScrollViewIndicatorStyle> {
        return source.observable(at: \Source.indicatorStyle)
    }
    
    /// Observable for `decelerationRate` property of `UIScrollView` source.
    @available(iOS 3.0, *)
    public var decelerationRate: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.decelerationRate)
    }
    
    /// Observable for `indexDisplayMode` property of `UIScrollView` source.
    public var indexDisplayMode: KeyPathObservable<Source, UIScrollViewIndexDisplayMode> {
        return source.observable(at: \Source.indexDisplayMode)
    }
    
    /// Observable for `delaysContentTouches` property of `UIScrollView` source.
    public var delaysContentTouches: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.delaysContentTouches)
    }
    
    /// Observable for `canCancelContentTouches` property of `UIScrollView` source.
    public var canCancelContentTouches: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.canCancelContentTouches)
    }
    
    /// Observable for `minimumZoomScale` property of `UIScrollView` source.
    public var minimumZoomScale: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.minimumZoomScale)
    }
    
    /// Observable for `maximumZoomScale` property of `UIScrollView` source.
    public var maximumZoomScale: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.maximumZoomScale)
    }
    
    /// Observable for `zoomScale` property of `UIScrollView` source.
    @available(iOS 3.0, *)
    public var zoomScale: KeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.zoomScale)
    }
    
    /// Observable for `bouncesZoom` property of `UIScrollView` source.
    public var bouncesZoom: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.bouncesZoom)
    }
    
    /// Observable for `scrollsToTop` property of `UIScrollView` source.
    public var scrollsToTop: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.scrollsToTop)
    }
    
    /// Observable for `keyboardDismissMode` property of `UIScrollView` source.
    @available(iOS 7.0, *)
    public var keyboardDismissMode: KeyPathObservable<Source, UIScrollViewKeyboardDismissMode> {
        return source.observable(at: \Source.keyboardDismissMode)
    }
    
    /// Observable for `refreshControl` property of `UIScrollView` source.
    @available(iOS 10.0, *)
    public var refreshControl: KeyPathObservable<Source, UIRefreshControl?> {
        return source.observable(at: \Source.refreshControl)
    }
}
