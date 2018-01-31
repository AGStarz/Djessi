//
//  UIDocumentBrowserViewController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 11.0, *)
extension ReactiveExtension where Source: UIDocumentBrowserViewController {

    /// Observable for `allowsDocumentCreation` property of `UIDocumentBrowserViewController` source.
    public var allowsDocumentCreation: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsDocumentCreation)
    }
    
    /// Observable for `allowsPickingMultipleItems` property of `UIDocumentBrowserViewController` source.
    public var allowsPickingMultipleItems: KeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsPickingMultipleItems)
    }
    
    // additionalLeadingNavigationBarButtonItems: [UIBarButtonItem]
    /// Observable for `additionalLeadingNavigationBarButtonItems` property of `UIDocumentBrowserViewController` source.
    public var additionalLeadingNavigationBarButtonItems: KeyPathObservable<Source, [UIBarButtonItem]> {
        return source.observable(at: \Source.additionalLeadingNavigationBarButtonItems)
    }
    
    // additionalTrailingNavigationBarButtonItems: [UIBarButtonItem]
    /// Observable for `additionalTrailingNavigationBarButtonItems` property of `UIDocumentBrowserViewController` source.
    public var additionalTrailingNavigationBarButtonItems: KeyPathObservable<Source, [UIBarButtonItem]> {
        return source.observable(at: \Source.additionalTrailingNavigationBarButtonItems)
    }
    
    /// Observable for `customActions` property of `UIDocumentBrowserViewController` source.
    public var customActions: KeyPathObservable<Source, [UIDocumentBrowserAction]> {
        return source.observable(at: \Source.customActions)
    }
    
    /// Observable for `browserUserInterfaceStyle` property of `UIDocumentBrowserViewController` source.
    public var browserUserInterfaceStyle: KeyPathObservable<Source, UIDocumentBrowserViewController.BrowserUserInterfaceStyle> {
        return source.observable(at: \Source.browserUserInterfaceStyle)
    }
}
