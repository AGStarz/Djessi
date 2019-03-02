//
//  UIActivityViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 6.0, *)
extension ReactiveExtension where Source: UIActivityViewController {
    
    /// Observable for `excludedActivityTypes` property of `UIActivityViewController` source.
    public var excludedActivityTypes: KeyPathObservable<Source, [UIActivity.ActivityType]?> {
        return source.observable(at: \Source.excludedActivityTypes)
    }
}
