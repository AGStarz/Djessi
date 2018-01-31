//
//  UITapGestureRecognizer+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UITapGestureRecognizer {
    
    /// Observable for `numberOfTouchesRequired` property of `UITapGestureRecognizer` source.
    public var numberOfTouchesRequired: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfTouchesRequired)
    }
    
    /// Observable for `numberOfTapsRequired` property of `UITapGestureRecognizer` source.
    public var numberOfTapsRequired: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.numberOfTapsRequired)
    }
}
