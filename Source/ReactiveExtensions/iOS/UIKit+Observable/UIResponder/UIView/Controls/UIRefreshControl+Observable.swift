//
//  UIRefreshControl+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UIRefreshControl {
    
    /// Observable for `tintColor` property of `UIRefreshControl` source.
    public var tintColor: KeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIColor>> {
        return source.observable(at: \Source.tintColor)
    }
    
    /// Observable for `attributedTitle` property of `UIRefreshControl` source.
    public var attributedTitle: KeyPathObservable<Source, NSAttributedString?> {
        return source.observable(at: \Source.attributedTitle)
    }
    
    /// Observable for `isRefreshing` property of `UIRefreshControl` source.
    public var isRefreshing: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.djessi_isRefreshing)
    }
}

extension UIRefreshControl {
    
    /// Refreshing proxy property.
    @objc internal dynamic var djessi_isRefreshing: Bool {
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
}
