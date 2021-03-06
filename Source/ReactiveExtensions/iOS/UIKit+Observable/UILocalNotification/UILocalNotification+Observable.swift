//
//  UILocalNotification+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit
import CoreLocation

@available(iOS, introduced: 4.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationRequest")
extension ReactiveExtension where Source: UILocalNotification {
    
    /// Observable for `fireDate` property of `UILocalNotification` source.
    public var fireDate: KeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.fireDate)
    }
    
    /// Observable for `timeZone` property of `UILocalNotification` source.
    public var timeZone: KeyPathObservable<Source, TimeZone?> {
        return source.observable(at: \Source.timeZone)
    }
    
    /// Observable for `repeatInterval` property of `UILocalNotification` source.
    public var repeatInterval: KeyPathObservable<Source, NSCalendar.Unit> {
        return source.observable(at: \Source.repeatInterval)
    }
    
    /// Observable for `repeatCalendar` property of `UILocalNotification` source.
    public var repeatCalendar: KeyPathObservable<Source, Calendar?> {
        return source.observable(at: \Source.repeatCalendar)
    }
    
    /// Observable for `region` property of `UILocalNotification` source.
    @available(iOS 8.0, *)
    public var region: KeyPathObservable<Source, CLRegion?> {
        return source.observable(at: \Source.region)
    }
    
    /// Observable for `regionTriggersOnce` property of `UILocalNotification` source.
    @available(iOS 8.0, *)
    public var regionTriggersOnce: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.regionTriggersOnce)
    }
    
    /// Observable for `alertBody` property of `UILocalNotification` source.
    public var alertBody: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.alertBody)
    }
    
    // hasAction: Bool
    /// Observable for `hasAction` property of `UILocalNotification` source.
    public var hasAction: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.hasAction)
    }
    
    /// Observable for `alertAction` property of `UILocalNotification` source.
    public var alertAction: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.alertAction)
    }
    
    /// Observable for `alertLaunchImage` property of `UILocalNotification` source.
    public var alertLaunchImage: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.alertLaunchImage)
    }
    
    /// Observable for `alertTitle` property of `UILocalNotification` source.
    @available(iOS 8.2, *)
    public var alertTitle: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.alertTitle)
    }
    
    /// Observable for `soundName` property of `UILocalNotification` source.
    public var soundName: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.soundName)
    }
    
    /// Observable for `applicationIconBadgeNumber` property of `UILocalNotification` source.
    public var applicationIconBadgeNumber: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.applicationIconBadgeNumber)
    }
    
    /// Observable for `userInfo` property of `UILocalNotification` source.
    public var userInfo: KeyPathObservable<Source, [AnyHashable: Any]?> {
        return source.observable(at: \Source.userInfo)
    }
    
    /// Observable for `category` property of `UILocalNotification` source.
    @available(iOS 8.0, *)
    public var category: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.category)
    }
}
