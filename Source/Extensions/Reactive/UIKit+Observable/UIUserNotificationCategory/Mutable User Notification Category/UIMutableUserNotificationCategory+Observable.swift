//
//  UIMutableUserNotificationCategory+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationCategory")
extension ReactiveExtension where Source: UIMutableUserNotificationCategory {
    
    /// Observable for `identifier` property of `UIMutableUserNotificationCategory` source.
    public var identifier: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.identifier)
    }
}
