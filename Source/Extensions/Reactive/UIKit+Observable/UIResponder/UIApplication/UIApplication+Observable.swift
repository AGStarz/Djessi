//
//  UIApplication+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIApplication {
    
    /// Observable for `isIdleTimerDisabled` property of `UIApplication` source.
    public var isIdleTimerDisabled: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isIdleTimerDisabled)
    }
    
    /// Observable for `isNetworkActivityIndicatorVisible` property of `UIApplication` source.
    public var isNetworkActivityIndicatorVisible: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isNetworkActivityIndicatorVisible)
    }
    
    /// Observable for `applicationIconBadgeNumber` property of `UIApplication` source.
    public var applicationIconBadgeNumber: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.applicationIconBadgeNumber)
    }
    
    /// Observable for `applicationSupportsShakeToEdit` property of `UIApplication` source.
    @available(iOS 3.0, *)
    public var applicationSupportsShakeToEdit: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.applicationSupportsShakeToEdit)
    }
    
    /// Observable for `scheduledLocalNotifications` property of `UIApplication` source.
    @available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNUserNotificationCenter getPendingNotificationRequestsWithCompletionHandler:]")
    public var scheduledLocalNotifications: AnyKeyPathObservable<Source, [UILocalNotification]?> {
        return source.observable(at: \Source.scheduledLocalNotifications)
    }
    
    /// Observable for `shortcutItems` property of `UIApplication` source.
    @available(iOS 9.0, *)
    public var shortcutItems: AnyKeyPathObservable<Source, [UIApplicationShortcutItem]?> {
        return source.observable(at: \Source.shortcutItems)
    }
}
