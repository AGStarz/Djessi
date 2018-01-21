//
//  UIPrintInteractionController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 4.2, *)
extension ReactiveExtension where Source: UIPrintInteractionController {
    
    // TODO: delegate
    
    /// Observable for `printInfo` property of `UIPrintInteractionController` source.
    public var printInfo: AnyKeyPathObservable<Source, UIPrintInfo?> {
        return source.observable(at: \Source.printInfo)
    }
    
    /// Observable for `showsPageRange` property of `UIPrintInteractionController` source.
    @available(iOS, introduced: 4.2, deprecated: 10.0, message: "Pages can be removed from the print preview, so page range is always shown.")
    public var showsPageRange: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsPageRange)
    }
    
    /// Observable for `showsNumberOfCopies` property of `UIPrintInteractionController` source.
    @available(iOS 7.0, *)
    public var showsNumberOfCopies: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsNumberOfCopies)
    }
    
    /// Observable for `showsPaperSelectionForLoadedPapers` property of `UIPrintInteractionController` source.
    @available(iOS 8.0, *)
    public var showsPaperSelectionForLoadedPapers: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsPaperSelectionForLoadedPapers)
    }
    
    /// Observable for `printPageRenderer` property of `UIPrintInteractionController` source.
    public var printPageRenderer: AnyKeyPathObservable<Source, UIPrintPageRenderer?> {
        return source.observable(at: \Source.printPageRenderer)
    }
    
    /// Observable for `printFormatter` property of `UIPrintInteractionController` source.
    public var printFormatter: AnyKeyPathObservable<Source, UIPrintFormatter?> {
        return source.observable(at: \Source.printFormatter)
    }
    
    /// Observable for `printingItem` property of `UIPrintInteractionController` source.
    public var printingItem: AnyKeyPathObservable<Source, Any?> {
        return source.observable(at: \Source.printingItem)
    }
    
    /// Observable for `printingItems` property of `UIPrintInteractionController` source.
    public var printingItems: AnyKeyPathObservable<Source, [Any]?> {
        return source.observable(at: \Source.printingItems)
    }
}
