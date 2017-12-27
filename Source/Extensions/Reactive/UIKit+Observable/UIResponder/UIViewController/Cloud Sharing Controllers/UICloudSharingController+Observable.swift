//
//  UICloudSharingController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UICloudSharingController {

    /// Observable for `availablePermissions` property of `UICloudSharingController` source.
    public var availablePermissions: AnyKeyPathObservable<Source, UICloudSharingPermissionOptions> {
        return source.observable(at: \Source.availablePermissions)
    }
}
