//
//  UITextDropProposal+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UITextDropProposal {
    
    /// Observable for `dropAction` property of `UITextDropProposal` source.
    public var dropAction: AnyKeyPathObservable<Source, UITextDropAction> {
        return source.observable(at: \Source.dropAction)
    }
    
    /// Observable for `dropProgressMode` property of `UITextDropProposal` source.
    public var dropProgressMode: AnyKeyPathObservable<Source, UITextDropProgressMode> {
        return source.observable(at: \Source.dropProgressMode)
    }
    
    /// Observable for `useFastSameViewOperations` property of `UITextDropProposal` source.
    public var useFastSameViewOperations: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.useFastSameViewOperations)
    }
    
    /// Observable for `dropPerformer` property of `UITextDropProposal` source.
    public var dropPerformer: AnyKeyPathObservable<Source, UITextDropPerformer> {
        return source.observable(at: \Source.dropPerformer)
    }
}