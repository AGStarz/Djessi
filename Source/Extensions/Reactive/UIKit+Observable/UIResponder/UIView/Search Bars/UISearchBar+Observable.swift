//
//  UISearchBar+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISearchBar {
    
    /// Observable for `barStyle` property of `UISearchBar` source.
    public var barStyle: AnyKeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `text` property of `UISearchBar` source.
    public var text: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `prompt` property of `UISearchBar` source.
    public var prompt: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.prompt)
    }
    
    /// Observable for `placeholder` property of `UISearchBar` source.
    public var placeholder: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.placeholder)
    }
    
    /// Observable for `showsBookmarkButton` property of `UISearchBar` source.
    public var showsBookmarkButton: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsBookmarkButton)
    }
    
    /// Observable for `showsCancelButton` property of `UISearchBar` source.
    public var showsCancelButton: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsCancelButton)
    }
    
    /// Observable for `showsSearchResultsButton` property of `UISearchBar` source.
    @available(iOS 3.2, *)
    public var showsSearchResultsButton: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsSearchResultsButton)
    }
    
    /// Observable for `isSearchResultsButtonSelected` property of `UISearchBar` source.
    @available(iOS 3.2, *)
    public var isSearchResultsButtonSelected: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSearchResultsButtonSelected)
    }
    
    /// Observable for `tintColor` property of `UISearchBar` source.
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UISearchBar` source.
    @available(iOS 7.0, *)
    public var barTintColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
    
    /// Observable for `searchBarStyle` property of `UISearchBar` source.
    @available(iOS 7.0, *)
    public var searchBarStyle: AnyKeyPathObservable<Source, UISearchBarStyle> {
        return source.observable(at: \Source.searchBarStyle)
    }
    
    /// Observable for `isTranslucent` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var isTranslucent: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
    
    /// Observable for `scopeButtonTitles` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var scopeButtonTitles: AnyKeyPathObservable<Source, [String]?> {
        return source.observable(at: \Source.scopeButtonTitles)
    }
    
    /// Observable for `selectedScopeButtonIndex` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var selectedScopeButtonIndex: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.selectedScopeButtonIndex)
    }
    
    /// Observable for `showsScopeBar` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var showsScopeBar: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsScopeBar)
    }
    
    /// Observable for `inputAccessoryView` property of `UISearchBar` source.
    public var inputAccessoryView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputAccessoryView)
    }
    
    /// Observable for `backgroundImage` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var backgroundImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backgroundImage)
    }
    
    /// Observable for `scopeBarBackgroundImage` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var scopeBarBackgroundImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.scopeBarBackgroundImage)
    }
    
    /// Observable for `searchFieldBackgroundPositionAdjustment` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var searchFieldBackgroundPositionAdjustment: AnyKeyPathObservable<Source, UIOffset> {
        return source.observable(at: \Source.searchFieldBackgroundPositionAdjustment)
    }
    
    /// Observable for `searchTextPositionAdjustment` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var searchTextPositionAdjustment: AnyKeyPathObservable<Source, UIOffset> {
        return source.observable(at: \Source.searchTextPositionAdjustment)
    }
}
