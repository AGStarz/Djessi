//
//  UIMutableApplicationShortcutItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UIMutableApplicationShortcutItem {
    
    /// Observable for `type` property of `UIMutableApplicationShortcutItem` source.
    public var type: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.type)
    }
    
    /// Observable for `localizedTitle` property of `UIMutableApplicationShortcutItem` source.
    public var localizedTitle: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.localizedTitle)
    }
    
    /// Observable for `localizedSubtitle` property of `UIMutableApplicationShortcutItem` source.
    public var localizedSubtitle: KeyPathObservable<Source, String?> {
        return source.observable(at: \Source.localizedSubtitle)
    }
    
    /// Observable for `icon` property of `UIMutableApplicationShortcutItem` source.
    public var icon: KeyPathObservable<Source, UIApplicationShortcutIcon?> {
        return source.observable(at: \Source.icon)
    }
    
    /// Observable for `userInfo` property of `UIMutableApplicationShortcutItem` source.
    public var userInfo: KeyPathObservable<Source, [String: NSSecureCoding]?> {
        return source.observable(at: \Source.userInfo)
    }
}
