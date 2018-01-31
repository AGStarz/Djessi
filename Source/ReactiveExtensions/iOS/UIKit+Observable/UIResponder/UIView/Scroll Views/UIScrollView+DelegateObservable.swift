//
//  UIScrollView+DelegateObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 23.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

extension DelegateProxy where Source: UIScrollViewDelegateHandler {
    
    /// <#Description#>
    public var scrollViewDidScroll: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidScroll, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidEndZooming: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewDidEndZoomingContainer> {
        return source.observable(at: \Source.scrollViewDidEndZooming, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidEndDragging: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewDidEndDraggingContainer> {
        return source.observable(at: \Source.scrollViewDidEndDragging, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidScrollToTop: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidScrollToTop, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewWillEndDragging: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewWillEndDraggingContainer> {
        return source.observable(at: \Source.scrollViewWillEndDragging, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewWillBeginZooming: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewWillBeginZoomingContainer> {
        return source.observable(at: \Source.scrollViewWillBeginZooming, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewWillBeginDragging: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewWillBeginDragging, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidEndDecelerating: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidEndDecelerating, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewWillBeginDecelerating: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewWillBeginDecelerating, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidEndScrollingAnimation: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidEndScrollingAnimation, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidChangeAdjustedContentInset: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidChangeAdjustedContentInset, shouldObserveInitialValue: false)
    }
    
    /// <#Description#>
    public var scrollViewDidZoom: KeyPathObservable<Source, UIScrollViewDelegateHandler.ScrollViewContainer> {
        return source.observable(at: \Source.scrollViewDidZoom, shouldObserveInitialValue: false)
    }
}

/// <#Description#>
@objcMembers
public class UIScrollViewDelegateHandler: NSObject {
    
    /// <#Description#>
    public class ScrollViewContainer: NSObject {
        
        /// <#Description#>
        public unowned let scrollView: UIScrollView
        
        /// <#Description#>
        ///
        /// - Parameter s: <#s description#>
        init(scrollView s: UIScrollView) {
            scrollView = s
        }
    }
    
    /// <#Description#>
    public class ScrollViewWillBeginZoomingContainer: ScrollViewContainer {
        
        /// <#Description#>
        public weak var view: UIView?
        
        /// <#Description#>
        ///
        /// - Parameters:
        ///   - scrollView: <#scrollView description#>
        ///   - with: <#with description#>
        init(scrollView: UIScrollView, with: UIView?) {
            view = with
            
            super.init(scrollView: scrollView)
        }
    }
    
    /// <#Description#>
    public class ScrollViewDidEndZoomingContainer: ScrollViewWillBeginZoomingContainer {
        
        /// <#Description#>
        public let scale: CGFloat
        
        /// <#Description#>
        ///
        /// - Parameters:
        ///   - scrollView: <#scrollView description#>
        ///   - view: <#view description#>
        ///   - atScale: <#atScale description#>
        init(scrollView: UIScrollView, with view: UIView?, atScale: CGFloat) {
            scale = atScale
            
            super.init(scrollView: scrollView, with: view)
        }
    }
    
    /// <#Description#>
    public class ScrollViewDidEndDraggingContainer: ScrollViewContainer {
        
        /// <#Description#>
        public let decelerating: Bool
        
        /// <#Description#>
        ///
        /// - Parameters:
        ///   - scrollView: <#scrollView description#>
        ///   - willDecelerate: <#willDecelerate description#>
        init(scrollView: UIScrollView, willDecelerate: Bool) {
            decelerating = willDecelerate
            
            super.init(scrollView: scrollView)
        }
    }
    
    /// <#Description#>
    public class ScrollViewWillEndDraggingContainer: ScrollViewContainer {
        
        /// <#Description#>
        public let velocity: CGPoint
        
        /// <#Description#>
        public let targetContentOffset: UnsafeMutablePointer<CGPoint>
        
        /// <#Description#>
        ///
        /// - Parameters:
        ///   - scrollView: <#scrollView description#>
        ///   - withVelocity: <#withVelocity description#>
        ///   - offset: <#offset description#>
        init(scrollView: UIScrollView, withVelocity: CGPoint, targetContentOffset offset: UnsafeMutablePointer<CGPoint>) {
            velocity = withVelocity
            targetContentOffset = offset
            
            super.init(scrollView: scrollView)
        }
    }
    
    /// <#Description#>
    dynamic var scrollViewDidZoom: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewDidScroll: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewDidScrollToTop: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewWillBeginDragging: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewDidEndDecelerating: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewWillBeginDecelerating: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewDidEndScrollingAnimation: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewDidEndZooming: ScrollViewDidEndZoomingContainer
    
    /// <#Description#>
    dynamic var scrollViewDidEndDragging: ScrollViewDidEndDraggingContainer
    
    /// <#Description#>
    dynamic var scrollViewDidChangeAdjustedContentInset: ScrollViewContainer
    
    /// <#Description#>
    dynamic var scrollViewWillEndDragging: ScrollViewWillEndDraggingContainer
    
    /// <#Description#>
    dynamic var scrollViewWillBeginZooming: ScrollViewWillBeginZoomingContainer
    
    /// <#Description#>
    ///
    /// - Parameter source: <#source description#>
    init(source: UIScrollView) {
        scrollViewDidZoom = ScrollViewContainer(scrollView: source)
        scrollViewDidScroll = ScrollViewContainer(scrollView: source)
        scrollViewDidScrollToTop = ScrollViewContainer(scrollView: source)
        scrollViewWillBeginDragging = ScrollViewContainer(scrollView: source)
        scrollViewDidEndDecelerating = ScrollViewContainer(scrollView: source)
        scrollViewWillBeginDecelerating = ScrollViewContainer(scrollView: source)
        scrollViewDidEndScrollingAnimation = ScrollViewContainer(scrollView: source)
        scrollViewDidChangeAdjustedContentInset = ScrollViewContainer(scrollView: source)
        scrollViewWillBeginZooming = ScrollViewWillBeginZoomingContainer(scrollView: source, with: nil)
        scrollViewDidEndDragging = ScrollViewDidEndDraggingContainer(scrollView: source, willDecelerate: true)
        scrollViewDidEndZooming = ScrollViewDidEndZoomingContainer(scrollView: source, with: nil, atScale: 1)
        
        var point: CGPoint = .zero
        scrollViewWillEndDragging = ScrollViewWillEndDraggingContainer(scrollView: source, withVelocity: point, targetContentOffset: &point)
        
        super.init()
        
        source.delegate = self
    }
}

extension UIScrollViewDelegateHandler: UIScrollViewDelegate {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        scrollViewDidScroll = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewDidZoom(_ scrollView: UIScrollView) {
        scrollViewDidZoom = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        scrollViewDidScrollToTop = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        scrollViewWillBeginDragging = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        scrollViewDidEndDecelerating = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        scrollViewWillBeginDecelerating = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        scrollViewDidEndScrollingAnimation = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewDidChangeAdjustedContentInset(_ scrollView: UIScrollView) {
        scrollViewDidChangeAdjustedContentInset = ScrollViewContainer(scrollView: scrollView)
    }
    
    public func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        scrollViewWillBeginZooming = ScrollViewWillBeginZoomingContainer(scrollView: scrollView, with: view)
    }
    
    public func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollViewDidEndZooming = ScrollViewDidEndZoomingContainer(scrollView: scrollView, with: view, atScale: scale)
    }
    
    public func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        scrollViewDidEndDragging = ScrollViewDidEndDraggingContainer(scrollView: scrollView, willDecelerate: decelerate)
    }
    
    public func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        scrollViewWillEndDragging = ScrollViewWillEndDraggingContainer(scrollView: scrollView, withVelocity: velocity, targetContentOffset: targetContentOffset)
    }
}
