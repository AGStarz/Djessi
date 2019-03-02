//
//  UIVideoEditorController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 3.1, *)
extension ReactiveExtension where Source: UIVideoEditorController {

    /// Observable for `videoPath` property of `UIVideoEditorController` source.
    public var videoPath: KeyPathObservable<Source, String> {
        return source.observable(at: \Source.videoPath)
    }
    
    /// Observable for `videoMaximumDuration` property of `UIVideoEditorController` source.
    public var videoMaximumDuration: KeyPathObservable<Source, TimeInterval> {
        return source.observable(at: \Source.videoMaximumDuration)
    }
    
    /// Observable for `videoQuality` property of `UIVideoEditorController` source.
    public var videoQuality: KeyPathObservable<Source, UIImagePickerController.QualityType> {
        return source.observable(at: \Source.videoQuality)
    }
}
