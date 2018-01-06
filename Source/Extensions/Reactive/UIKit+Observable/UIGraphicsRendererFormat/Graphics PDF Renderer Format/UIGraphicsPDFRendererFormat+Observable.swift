//
//  UIGraphicsPDFRendererFormat+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.01.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension ReactiveExtension where Source: UIGraphicsPDFRendererFormat {
    
    /// Observable for `documentInfo` property of `UIGraphicsPDFRendererFormat` source.
    public var documentInfo: AnyKeyPathObservable<Source, [String: Any]> {
        return source.observable(at: \Source.documentInfo)
    }
}
