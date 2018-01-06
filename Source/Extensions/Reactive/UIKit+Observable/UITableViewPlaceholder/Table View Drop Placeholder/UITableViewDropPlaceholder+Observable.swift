//
//  UITableViewDropPlaceholder+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UITableViewDropPlaceholder {
    
    /// Observable for `previewParametersProvider` property of `UITableViewDropPlaceholder` source.
    public var previewParametersProvider: AnyKeyPathObservable<Source, ((UITableViewCell) -> UIDragPreviewParameters?)?> {
        return source.observable(at: \Source.previewParametersProvider)
    }
}
