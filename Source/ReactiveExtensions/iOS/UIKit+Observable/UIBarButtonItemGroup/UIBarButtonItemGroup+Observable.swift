//
//  UIBarButtonItemGroup+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UIBarButtonItemGroup {
    
    /// Observable for `barButtonItems` property of `UIBarButtonItemGroup` source.
    public var barButtonItems: KeyPathObservable<Source, [UIBarButtonItem]> {
        return source.observable(at: \Source.barButtonItems)
    }
    
    /// Observable for `representativeItem` property of `UIBarButtonItemGroup` source.
    public var representativeItem: KeyPathObservable<Source, UIBarButtonItem?> {
        return source.observable(at: \Source.representativeItem)
    }
}
