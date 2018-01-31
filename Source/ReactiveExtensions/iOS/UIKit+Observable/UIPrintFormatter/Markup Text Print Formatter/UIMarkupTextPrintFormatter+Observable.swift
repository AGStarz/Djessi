//
//  UIMarkupTextPrintFormatter+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UIMarkupTextPrintFormatter {
    
    /// Observable for `markupText` property of `UIMarkupTextPrintFormatter` source.
    public var markupText: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.markupText)
    }
}
