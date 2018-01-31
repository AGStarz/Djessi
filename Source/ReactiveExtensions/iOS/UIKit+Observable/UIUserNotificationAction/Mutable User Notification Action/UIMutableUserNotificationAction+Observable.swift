//
//  UIMutableUserNotificationAction+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction")
extension ReactiveExtension where Source: UIMutableUserNotificationAction {
    
    /// Observable for `identifier` property of `UIMutableUserNotificationAction` source.
    public var identifier: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.identifier)
    }
    
    /// Observable for `title` property of `UIMutableUserNotificationAction` source.
    public var title: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `behavior` property of `UIMutableUserNotificationAction` source.
    @available(iOS 9.0, *)
    public var behavior: KeyPathObservable<Source, UIUserNotificationActionBehavior> {
        return source.observable(at: \Source.behavior)
    }
    
    /// Observable for `parameters` property of `UIMutableUserNotificationAction` source.
    @available(iOS 9.0, *)
    public var parameters: KeyPathObservable<Source, [AnyHashable: Any]> {
        return source.observable(at: \Source.parameters)
    }
    
    /// Observable for `activationMode` property of `UIMutableUserNotificationAction` source.
    public var activationMode: KeyPathObservable<Source, UIUserNotificationActivationMode> {
        return source.observable(at: \Source.activationMode)
    }
    
    /// Observable for `isAuthenticationRequired` property of `UIMutableUserNotificationAction` source.
    public var isAuthenticationRequired: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isAuthenticationRequired)
    }
    
    /// Observable for `isDestructive` property of `UIMutableUserNotificationAction` source.
    public var isDestructive: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isDestructive)
    }
}
