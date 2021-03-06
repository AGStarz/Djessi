//
//  UITableViewPlaceholder+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UITableViewPlaceholder {
    
    /// Observable for `cellUpdateHandler` property of `UITableViewPlaceholder` source.
    public var cellUpdateHandler: KeyPathObservable<Source, ((UITableViewCell) -> Swift.Void)?> {
        return source.observable(at: \Source.cellUpdateHandler)
    }
}
