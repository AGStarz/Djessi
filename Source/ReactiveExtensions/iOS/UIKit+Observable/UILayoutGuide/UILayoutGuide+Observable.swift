//
//  UILayoutGuide+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UILayoutGuide {
    
    /// Observable for `identifier` property of `UILayoutGuide` source.
    public var identifier: AnyKeyPathObservable<Source, String> {
        return source.observable(at: \Source.identifier)
    }
}
