//
//  UISearchDisplayController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS, introduced: 3.0, deprecated: 8.0, message: "UISearchDisplayController has been replaced with UISearchController")
extension ReactiveExtension where Source: UISearchDisplayController {
    
    // TODO: delegate
    
    /// Observable for `searchResultsTitle` property of `UISearchDisplayController` source.
    @available(iOS 5.0, *)
    public var searchResultsTitle: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.searchResultsTitle)
    }
    
    /// Observable for `displaysSearchBarInNavigationBar` property of `UISearchDisplayController` source.
    @available(iOS 7.0, *)
    public var displaysSearchBarInNavigationBar: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.displaysSearchBarInNavigationBar)
    }
    
    /// Observable for `isActive` property of `UISearchDisplayController` source.
    public var isActive: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isActive)
    }
}
