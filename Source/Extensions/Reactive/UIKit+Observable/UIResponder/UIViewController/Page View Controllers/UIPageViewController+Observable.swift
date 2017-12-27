//
//  UIPageViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 5.0, *)
extension ReactiveExtension where Source: UIPageViewController {
    
    /// Observable for `isDoubleSided` property of `UIPageViewController` source.
    public var isDoubleSided: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isDoubleSided)
    }
}
