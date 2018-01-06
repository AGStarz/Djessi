//
//  UIPageControl+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIPageControl {
    
    /// Observable for `currentPage` property of `UIPageControl` source.
    public var currentPage: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.currentPage)
    }
    
    /// Observable for `hidesForSinglePage` property of `UIPageControl` source.
    public var hidesForSinglePage: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hidesForSinglePage)
    }
    
    /// Observable for `defersCurrentPageDisplay` property of `UIPageControl` source.
    public var defersCurrentPageDisplay: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.defersCurrentPageDisplay)
    }
    
    /// Observable for `pageIndicatorTintColor` property of `UIPageControl` source.
    @available(iOS 6.0, *)
    public var pageIndicatorTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.pageIndicatorTintColor)
    }
    
    /// Observable for `currentPageIndicatorTintColor` property of `UIPageControl` source.
    @available(iOS 6.0, *)
    public var currentPageIndicatorTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.currentPageIndicatorTintColor)
    }
    
    /// Observable for `numberOfPages` property of `UIPageControl` source.
    public var numberOfPages: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfPages)
    }
}
