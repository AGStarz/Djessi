//
//  UIWebView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIWebView {
    
    /// Observable for `scalesPageToFit` property of `UIWebView` source.
    public var scalesPageToFit: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.scalesPageToFit)
    }
    
    /// Observable for `dataDetectorTypes` property of `UIWebView` source.
    @available(iOS 3.0, *)
    public var dataDetectorTypes: AnyKeyPathObservable<Source, UIDataDetectorTypes> {
        return source.observable(at: \Source.dataDetectorTypes)
    }
    
    /// Observable for `allowsInlineMediaPlayback` property of `UIWebView` source.
    @available(iOS 4.0, *)
    public var allowsInlineMediaPlayback: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsInlineMediaPlayback)
    }
    
    /// Observable for `mediaPlaybackRequiresUserAction` property of `UIWebView` source.
    @available(iOS 4.0, *)
    public var mediaPlaybackRequiresUserAction: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.mediaPlaybackRequiresUserAction)
    }
    
    /// Observable for `mediaPlaybackAllowsAirPlay` property of `UIWebView` source.
    @available(iOS 5.0, *)
    public var mediaPlaybackAllowsAirPlay: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.mediaPlaybackAllowsAirPlay)
    }
    
    /// Observable for `suppressesIncrementalRendering` property of `UIWebView` source.
    @available(iOS 6.0, *)
    public var suppressesIncrementalRendering: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.suppressesIncrementalRendering)
    }
    
    /// Observable for `keyboardDisplayRequiresUserAction` property of `UIWebView` source.
    @available(iOS 6.0, *)
    public var keyboardDisplayRequiresUserAction: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.keyboardDisplayRequiresUserAction)
    }
    
    /// Observable for `paginationMode` property of `UIWebView` source.
    @available(iOS 7.0, *)
    public var paginationMode: AnyKeyPathObservable<Source, UIWebPaginationMode> {
        return source.observable(at: \Source.paginationMode)
    }
    
    /// Observable for `paginationBreakingMode` property of `UIWebView` source.
    @available(iOS 7.0, *)
    public var paginationBreakingMode: AnyKeyPathObservable<Source, UIWebPaginationBreakingMode> {
        return source.observable(at: \Source.paginationBreakingMode)
    }
    
    /// Observable for `pageLength` property of `UIWebView` source.
    @available(iOS 7.0, *)
    public var pageLength: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.pageLength)
    }
    
    /// Observable for `gapBetweenPages` property of `UIWebView` source.
    @available(iOS 7.0, *)
    public var gapBetweenPages: AnyKeyPathObservable<Source, CGFloat> {
        return source.observable(at: \Source.gapBetweenPages)
    }
    
    /// Observable for `allowsPictureInPictureMediaPlayback` property of `UIWebView` source.
    @available(iOS 9.0, *)
    public var allowsPictureInPictureMediaPlayback: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsPictureInPictureMediaPlayback)
    }
    
    /// Observable for `allowsLinkPreview` property of `UIWebView` source.
    @available(iOS 9.0, *)
    public var allowsLinkPreview: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsLinkPreview)
    }
}
