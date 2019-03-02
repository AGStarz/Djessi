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
    public var dropAction: KeyPathObservable<Source, UITextDropProposal.Action> {
        return source.observable(at: \Source.dropAction)
    }
    
    /// Observable for `dropProgressMode` property of `UITextDropProposal` source.
    public var dropProgressMode: KeyPathObservable<Source, UITextDropProposal.ProgressMode> {
        return source.observable(at: \Source.dropProgressMode)
    }
    
    /// Observable for `useFastSameViewOperations` property of `UITextDropProposal` source.
    public var useFastSameViewOperations: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.useFastSameViewOperations)
    }
    
    /// Observable for `dropPerformer` property of `UITextDropProposal` source.
    public var dropPerformer: KeyPathObservable<Source, UITextDropProposal.Performer> {
        return source.observable(at: \Source.dropPerformer)
    }
}
