//
//  UITabBarItem+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 04.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UITabBarItem {
    
    /// Observable for `selectedImage` property of `UITabBarItem` source.
    @available(iOS 7.0, *)
    public var selectedImage: AnyKeyPathObservable<Source, UIImage?> {
        return source.observable(at: \Source.selectedImage)
    }
    
    /// Observable for `badgeValue` property of `UITabBarItem` source.
    public var badgeValue: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.badgeValue)
    }
    
    /// Observable for `titlePositionAdjustment` property of `UITabBarItem` source.
    @available(iOS 5.0, *)
    public var titlePositionAdjustment: AnyKeyPathObservable<Source, UIOffset> {
        return source.observable(at: \Source.titlePositionAdjustment)
    }
    
    /// Observable for `badgeColor` property of `UITabBarItem` source.
    @available(iOS 10.0, *)
    public var badgeColor: AnyKeyPathObservable<Source, UIColor?> {
        return source.observable(at: \Source.badgeColor)
    }
}
