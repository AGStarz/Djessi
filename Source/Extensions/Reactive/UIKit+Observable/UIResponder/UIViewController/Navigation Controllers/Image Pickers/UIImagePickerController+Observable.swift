//
//  UIImagePickerController+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 25.12.2017.
//  Copyright © 2017 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIImagePickerController {

    /// Observable for `sourceType` property of `UIImagePickerController` source.
    public var sourceType: AnyKeyPathObservable<Source, UIImagePickerControllerSourceType> {
        return source.observable(at: \Source.sourceType)
    }
    
    /// Observable for `mediaTypes` property of `UIImagePickerController` source.
    public var mediaTypes: AnyKeyPathObservable<Source, [String]> {
        return source.observable(at: \Source.mediaTypes)
    }
    
    /// Observable for `allowsEditing` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var allowsEditing: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.allowsEditing)
    }
    
    /// Observable for `imageExportPreset` property of `UIImagePickerController` source.
    @available(iOS 11.0, *)
    public var imageExportPreset: AnyKeyPathObservable<Source, UIImagePickerControllerImageURLExportPreset> {
        return source.observable(at: \Source.imageExportPreset)
    }
    
    /// Observable for `videoMaximumDuration` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var videoMaximumDuration: AnyKeyPathObservable<Source, TimeInterval> {
        return source.observable(at: \Source.videoMaximumDuration)
    }
    
    /// Observable for `videoQuality` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var videoQuality: AnyKeyPathObservable<Source, UIImagePickerControllerQualityType> {
        return source.observable(at: \Source.videoQuality)
    }
    
    /// Observable for `videoExportPreset` property of `UIImagePickerController` source.
    @available(iOS 11.0, *)
    public var videoExportPreset: AnyKeyPathObservable<Source, String> {
        return source.observable(at: \Source.videoExportPreset)
    }
    
    /// Observable for `showsCameraControls` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var showsCameraControls: AnyKeyPathObservable<Source, Bool> {
        return source.observable(at: \Source.showsCameraControls)
    }
    
    /// Observable for `cameraOverlayView` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var cameraOverlayView: AnyKeyPathObservable<Source, UIView?> {
        return source.observable(at: \Source.cameraOverlayView)
    }
    
    /// Observable for `cameraViewTransform` property of `UIImagePickerController` source.
    @available(iOS 3.1, *)
    public var cameraViewTransform: AnyKeyPathObservable<Source, CGAffineTransform> {
        return source.observable(at: \Source.cameraViewTransform)
    }
    
    /// Observable for `cameraCaptureMode` property of `UIImagePickerController` source.
    @available(iOS 4.0, *)
    public var cameraCaptureMode: AnyKeyPathObservable<Source, UIImagePickerControllerCameraCaptureMode> {
        return source.observable(at: \Source.cameraCaptureMode)
    }
    
    /// Observable for `cameraDevice` property of `UIImagePickerController` source.
    @available(iOS 4.0, *)
    public var cameraDevice: AnyKeyPathObservable<Source, UIImagePickerControllerCameraDevice> {
        return source.observable(at: \Source.cameraDevice)
    }
    
    /// Observable for `cameraFlashMode` property of `UIImagePickerController` source.
    @available(iOS 4.0, *)
    public var cameraFlashMode: AnyKeyPathObservable<Source, UIImagePickerControllerCameraFlashMode> {
        return source.observable(at: \Source.cameraFlashMode)
    }
}
