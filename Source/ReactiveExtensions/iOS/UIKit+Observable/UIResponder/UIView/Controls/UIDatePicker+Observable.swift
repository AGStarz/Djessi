//
//  UIDatePicker+Observable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 16.12.2017.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import UIKit

@available(iOS 2.0, *)
extension ReactiveExtension where Source: UIDatePicker {
    
    /// Observable for `locale` property of `UIDatePicker` source.
    public var locale: KeyPathObservable<Source, Locale?> {
        return source.observable(at: \Source.locale)
    }
    
    /// Observable for `calendar` property of `UIDatePicker` source.
    public var calendar: KeyPathObservable<Source, Optional<Calendar>> {
        return source.observable(at: \Source.calendar)
    }
    
    /// Observable for `timeZone` property of `UIDatePicker` source.
    public var timeZone: KeyPathObservable<Source, TimeZone?> {
        return source.observable(at: \Source.timeZone)
    }
    
    /// Observable for `date` property of `UIDatePicker` source.
    public var date: KeyPathObservable<Source, Date> {
        return source.observable(at: \Source.date)
    }
    
    /// Observable for `minimumDate` property of `UIDatePicker` source.
    public var minimumDate: KeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.minimumDate)
    }
    
    /// Observable for `maximumDate` property of `UIDatePicker` source.
    public var maximumDate: KeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.maximumDate)
    }
    
    /// Observable for `countDownDuration` property of `UIDatePicker` source.
    public var countDownDuration: KeyPathObservable<Source, TimeInterval> {
        return source.observable(at: \Source.countDownDuration)
    }
    
    /// Observable for `minuteInterval` property of `UIDatePicker` source.
    public var minuteInterval: KeyPathObservable<Source, Int> {
        return source.observable(at: \Source.minuteInterval)
    }

    /// Observable for `datePickerMode` property of `UIDatePicker` source.
    public var datePickerMode: KeyPathObservable<Source, UIDatePickerMode> {
        return source.observable(at: \Source.datePickerMode)
    }
}
