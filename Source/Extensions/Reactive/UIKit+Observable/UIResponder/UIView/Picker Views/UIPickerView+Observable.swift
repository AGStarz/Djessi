//
//  UIPickerView+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 20.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

// TODO: - not completed

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIPickerView {

    /// Observable for `showsSelectionIndicator` property of `UIPickerView` source.
    public var showsSelectionIndicator: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsSelectionIndicator)
    }
}
