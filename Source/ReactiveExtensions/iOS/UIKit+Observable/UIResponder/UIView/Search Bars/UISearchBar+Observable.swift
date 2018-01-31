//
//  UISearchBar+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

// TODO: not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UISearchBar {
    
    /// Observable for `barStyle` property of `UISearchBar` source.
    public var barStyle: KeyPathObservable<Source, UIBarStyle> {
        return source.observable(at: \Source.barStyle)
    }
    
    /// Observable for `text` property of `UISearchBar` source.
    public var text: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.text)
    }
    
    /// Observable for `prompt` property of `UISearchBar` source.
    public var prompt: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.prompt)
    }
    
    /// Observable for `placeholder` property of `UISearchBar` source.
    public var placeholder: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.placeholder)
    }
    
    /// Observable for `showsBookmarkButton` property of `UISearchBar` source.
    public var showsBookmarkButton: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsBookmarkButton)
    }
    
    /// Observable for `showsCancelButton` property of `UISearchBar` source.
    public var showsCancelButton: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsCancelButton)
    }
    
    /// Observable for `showsSearchResultsButton` property of `UISearchBar` source.
    @available(iOS 3.2, *)
    public var showsSearchResultsButton: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsSearchResultsButton)
    }
    
    /// Observable for `isSearchResultsButtonSelected` property of `UISearchBar` source.
    @available(iOS 3.2, *)
    public var isSearchResultsButtonSelected: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isSearchResultsButtonSelected)
    }
    
    /// Observable for `tintColor` property of `UISearchBar` source.
    public var tintColor: KeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `barTintColor` property of `UISearchBar` source.
    @available(iOS 7.0, *)
    public var barTintColor: KeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.barTintColor)
    }
    
    /// Observable for `searchBarStyle` property of `UISearchBar` source.
    @available(iOS 7.0, *)
    public var searchBarStyle: KeyPathObservable<Source, UISearchBarStyle> {
        return source.observable(at: \Source.searchBarStyle)
    }
    
    /// Observable for `isTranslucent` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var isTranslucent: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isTranslucent)
    }
    
    /// Observable for `scopeButtonTitles` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var scopeButtonTitles: KeyPathObservable<Source, [String]?> {
        return source.observable(at: \Source.scopeButtonTitles)
    }
    
    /// Observable for `selectedScopeButtonIndex` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var selectedScopeButtonIndex: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.selectedScopeButtonIndex)
    }
    
    /// Observable for `showsScopeBar` property of `UISearchBar` source.
    @available(iOS 3.0, *)
    public var showsScopeBar: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsScopeBar)
    }
    
    /// Observable for `inputAccessoryView` property of `UISearchBar` source.
    public var inputAccessoryView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.inputAccessoryView)
    }
    
    /// Observable for `backgroundImage` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var backgroundImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.backgroundImage)
    }
    
    /// Observable for `scopeBarBackgroundImage` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var scopeBarBackgroundImage: KeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.scopeBarBackgroundImage)
    }
    
    /// Observable for `searchFieldBackgroundPositionAdjustment` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var searchFieldBackgroundPositionAdjustment: KeyPathObservable<Source, UIOffset> {
        return source.observable(at: \Source.searchFieldBackgroundPositionAdjustment)
    }
    
    /// Observable for `searchTextPositionAdjustment` property of `UISearchBar` source.
    @available(iOS 5.0, *)
    public var searchTextPositionAdjustment: KeyPathObservable<Source, UIOffset> {
        return source.observable(at: \Source.searchTextPositionAdjustment)
    }
}
