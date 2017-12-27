//
//  UIViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIViewController {

    /// Observable for `view` property of `UIViewController` source.
    public var view: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<UIView>> {
        return source.observable(at: \Source.view)
    }
    
    /// Observable for `title` property of `UIViewController` source.
    public var title: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.title)
    }
    
    /// Observable for `definesPresentationContext` property of `UIViewController` source.
    @available(iOS 5.0, *)
    public var definesPresentationContext: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.definesPresentationContext)
    }
    
    /// Observable for `providesPresentationContextTransitionStyle` property of `UIViewController` source.
    @available(iOS 5.0, *)
    public var providesPresentationContextTransitionStyle: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.providesPresentationContextTransitionStyle)
    }
    
    /// Observable for `restoresFocusAfterTransition` property of `UIViewController` source.
    @available(iOS 10.0, *)
    public var restoresFocusAfterTransition: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.restoresFocusAfterTransition)
    }
    
    /// Observable for `modalTransitionStyle` property of `UIViewController` source.
    @available(iOS 3.0, *)
    public var modalTransitionStyle: AnyKeyPathObservable<Source, UIModalTransitionStyle> {
        return source.observable(at: \Source.modalTransitionStyle)
    }
    
    /// Observable for `modalPresentationStyle` property of `UIViewController` source.
    @available(iOS 3.2, *)
    public var modalPresentationStyle: AnyKeyPathObservable<Source, UIModalPresentationStyle> {
        return source.observable(at: \Source.modalPresentationStyle)
    }
    
    /// Observable for `modalPresentationCapturesStatusBarAppearance` property of `UIViewController` source.
    @available(iOS 7.0, *)
    public var modalPresentationCapturesStatusBarAppearance: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.modalPresentationCapturesStatusBarAppearance)
    }
    
    /// Observable for `edgesForExtendedLayout` property of `UIViewController` source.
    @available(iOS 7.0, *)
    public var edgesForExtendedLayout: AnyKeyPathObservable<Source, UIRectEdge> {
        return source.observable(at: \Source.edgesForExtendedLayout)
    }
    
    /// Observable for `extendedLayoutIncludesOpaqueBars` property of `UIViewController` source.
    @available(iOS 7.0, *)
    public var extendedLayoutIncludesOpaqueBars: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.extendedLayoutIncludesOpaqueBars)
    }
    
    /// Observable for `automaticallyAdjustsScrollViewInsets` property of `UIViewController` source.
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
    public var automaticallyAdjustsScrollViewInsets: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.automaticallyAdjustsScrollViewInsets)
    }
    
    /// Observable for `preferredContentSize` property of `UIViewController` source.
    @available(iOS 7.0, *)
    public var preferredContentSize: AnyKeyPathObservable<Source, CGSize> {
        return source.observable(at: \Source.preferredContentSize)
    }
    
    /// Observable for `isEditing` property of `UIViewController` source.
    public var isEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.isEditing)
    }
    
    /// Observable for `restorationIdentifier` property of `UIViewController` source.
    @available(iOS 6.0, *)
    public var restorationIdentifier: AnyKeyPathObservable<Source, String?> {
        return source.observable(at: \Source.restorationIdentifier)
    }
    
    /// Observable for `restorationClass` property of `UIViewController` source.
    @available(iOS 6.0, *)
    public var restorationClass: AnyKeyPathObservable<Source, UIViewControllerRestoration.Type?> {
        return source.observable(at: \Source.restorationClass)
    }
    
    /// Observable for `additionalSafeAreaInsets` property of `UIViewController` source.
    @available(iOS 11.0, *)
    public var additionalSafeAreaInsets: AnyKeyPathObservable<Source, UIEdgeInsets> {
        return source.observable(at: \Source.additionalSafeAreaInsets)
    }
    
    /// Observable for `viewRespectsSystemMinimumLayoutMargins` property of `UIViewController` source.
    @available(iOS 11.0, *)
    public var viewRespectsSystemMinimumLayoutMargins: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.viewRespectsSystemMinimumLayoutMargins)
    }
    
    // hidesBottomBarWhenPushed: Bool
    // toolbarItems: [UIBarButtonItem]? // @available(iOS 3.0, *)
}
