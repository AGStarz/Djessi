//
//  UITextInputAssistantItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 06.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
extension ReactiveExtension where Source: UITextInputAssistantItem {
    
    /// Observable for `allowsHidingShortcuts` property of `UITextInputAssistantItem` source.
    public var allowsHidingShortcuts: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsHidingShortcuts)
    }
    
    /// Observable for `leadingBarButtonGroups` property of `UITextInputAssistantItem` source.
    public var leadingBarButtonGroups: AnyKeyPathObservable<Source, [UIBarButtonItemGroup]> {
        return source.observable(at: \Source.leadingBarButtonGroups)
    }
    
    /// Observable for `trailingBarButtonGroups` property of `UITextInputAssistantItem` source.
    public var trailingBarButtonGroups: AnyKeyPathObservable<Source, [UIBarButtonItemGroup]> {
        return source.observable(at: \Source.trailingBarButtonGroups)
    }
}
