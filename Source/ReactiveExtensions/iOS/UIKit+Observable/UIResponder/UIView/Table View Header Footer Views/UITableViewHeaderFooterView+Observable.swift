//
//  UITableViewHeaderFooterView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UITableViewHeaderFooterView {
    
    /// Observable for `backgroundView` property of `UITableViewCell` source.
    public var backgroundView: KeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.backgroundView)
    }
}
