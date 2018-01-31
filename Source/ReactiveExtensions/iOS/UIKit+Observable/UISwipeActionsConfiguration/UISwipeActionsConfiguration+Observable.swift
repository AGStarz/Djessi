//
//  UISwipeActionsConfiguration+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UISwipeActionsConfiguration {
    
    /// Observable for `performsFirstActionWithFullSwipe` property of `UISwipeActionsConfiguration` source.
    public var performsFirstActionWithFullSwipe: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.performsFirstActionWithFullSwipe)
    }
}
