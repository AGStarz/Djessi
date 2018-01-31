//
//  UIDropProposal+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDropProposal {
    
    /// Observable for `isPrecise` property of `UIDropProposal` source.
    public var isPrecise: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isPrecise)
    }
    
    /// Observable for `prefersFullSizePreview` property of `UIDropProposal` source.
    public var prefersFullSizePreview: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.prefersFullSizePreview)
    }
}
