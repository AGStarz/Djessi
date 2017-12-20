//
//  UIRefreshControl+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

/*extension UIRefreshControl {
    
    var refreshing: Bool {
        get {
            return isRefreshing
        }
        set {
            if newValue {
                beginRefreshing()
            } else {
                endRefreshing()
            }
        }
    }
}*/

// TODO: - not completed

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UIRefreshControl {
    
    // source.observable(at: \Source.refreshing)
    
    /// Observable for `tintColor` property of `UIRefreshControl` source.
    public var tintColor: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `attributedTitle` property of `UIRefreshControl` source.
    public var attributedTitle: AnyKeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedTitle)
    }
}
