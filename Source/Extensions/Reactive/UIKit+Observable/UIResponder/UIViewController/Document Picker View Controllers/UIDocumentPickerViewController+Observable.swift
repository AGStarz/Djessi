//
//  UIDocumentPickerViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension ReactiveExtension where Source: UIDocumentPickerViewController {

    /// Observable for `allowsMultipleSelection` property of `UIDocumentPickerViewController` source.
    @available(iOS 11.0, *)
    public var allowsMultipleSelection: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsMultipleSelection)
    }
}
