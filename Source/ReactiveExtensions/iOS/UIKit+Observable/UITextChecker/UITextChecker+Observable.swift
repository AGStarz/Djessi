//
//  UITextChecker+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.2, *)
extension ReactiveExtension where Source: UITextChecker {
    
    /// Observable for `ignoredWords` property of `UITextChecker` source.
    public var ignoredWords: KeyPathObservable<Source, [String]?> {
        return source.observable(at: \Source.ignoredWords)
    }
}
