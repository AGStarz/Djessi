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
    public var locale: AnyKeyPathObservable<Source, Locale?> {
        return source.observable(at: \Source.locale)
    }
    
    /// Observable for `calendar` property of `UIDatePicker` source.
    public var calendar: AnyKeyPathObservable<Source, ImplicitlyUnwrappedOptional<Calendar>> {
        return source.observable(at: \Source.calendar)
    }
    
    /// Observable for `timeZone` property of `UIDatePicker` source.
    public var timeZone: AnyKeyPathObservable<Source, TimeZone?> {
        return source.observable(at: \Source.timeZone)
    }
    
    /// Observable for `date` property of `UIDatePicker` source.
    public var date: AnyKeyPathObservable<Source, Date> {
        return source.observable(at: \Source.date)
    }
    
    /// Observable for `minimumDate` property of `UIDatePicker` source.
    public var minimumDate: AnyKeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.minimumDate)
    }
    
    /// Observable for `maximumDate` property of `UIDatePicker` source.
    public var maximumDate: AnyKeyPathObservable<Source, Date?> {
        return source.observable(at: \Source.maximumDate)
    }
    
    /// Observable for `countDownDuration` property of `UIDatePicker` source.
    public var countDownDuration: AnyKeyPathObservable<Source, TimeInterval> {
        return source.observable(at: \Source.countDownDuration)
    }
    
    /// Observable for `minuteInterval` property of `UIDatePicker` source.
    public var minuteInterval: AnyKeyPathObservable<Source, Int> {
        return source.observable(at: \Source.minuteInterval)
    }

    /// Observable for `datePickerMode` property of `UIDatePicker` source.
    public var datePickerMode: AnyKeyPathObservable<Source, UIDatePickerMode> {
        return source.observable(at: \Source.datePickerMode)
    }
}
