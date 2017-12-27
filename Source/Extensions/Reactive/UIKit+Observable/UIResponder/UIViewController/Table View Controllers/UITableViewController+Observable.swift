//
//  UITableViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITableViewController {

    /// Observable for `tableView` property of `UITableViewController` source.
    public var tableView: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UITableView>> {
        return source.observable(at: \Source.tableView)
    }
    
    /// Observable for `clearsSelectionOnViewWillAppear` property of `UITableViewController` source.
    @available(iOS 3.2, *)
    public var clearsSelectionOnViewWillAppear: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.clearsSelectionOnViewWillAppear)
    }
    
    /// Observable for `refreshControl` property of `UITableViewController` source.
    @available(iOS 6.0, *)
    public var refreshControl: AnyKeyPathObservable<Source, UIRefreshControl?> {
        return source.observable(at: \Source.refreshControl)
    }
}
