//
//  ZipObservable.swift
//  Djessi
//
//  Created by Vasily Agafonov on 05.02.2018.
//  Copyright © 2018 Agafonov. All rights reserved.
//

import Foundation

/// Implementation of `Observable` protocol.
///
/// Define zip feature to order changes from two observables.
///
/// You can use `ZipObservable` only by calling `zip` method defined for all `Observable` types:
///
///     let labelOne = UILabel()
///     let labelTwo = UILabel()
///
///     let observableOne = labelOne.observable(at: \UILabel.text).flatMap({ $0 })
///     let observableTwo = labelTwo.observable(at: \UILabel.text).flatMap({ $0 })
///
///     let token = observableOne
///         .zip(with: observableTwo)
///         .observe { (value) in
///             print("Value one is \(value.0)")
///             print("Value two is \(value.1)")
///         }
///
/// - Warning:
/// You should keep strong reference to token's which was returned by calling `observe` method or use `DisposeBag` because object will be finished generate observation changes if token deallocated.
public class ZipObservable<O1: Observable, O2: Observable>: Observable {
    
    /// Thread-safe queue for zipping two arrays.
    class ZipQueue<K, V> {
        
        /// Lock to prevent multiple dequeueing at same time.
        private let lock = NSRecursiveLock()
        
        /// Queue of first values.
        private(set) var kValues: [K] = []
        
        /// Queue of second values.
        private(set) var vValues: [V] = []
        
        /// Pair which consists with the top values from both queues, if exists.
        var dequeue: (K, V)? {
            defer { lock.unlock() }
            
            lock.lock()
            
            guard let k = kValues.first, let v = vValues.first else { return nil }
            
            kValues.remove(at: 0)
            vValues.remove(at: 0)
            
            return (k, v)
        }
        
        /// Append new element to first queue.
        ///
        /// - Parameter value: Element to append.
        func enqueue(value: K) {
            kValues.append(value)
        }
        
        /// Append new element to second queue.
        ///
        /// - Parameter value: Element to append.
        func enqueue(value: V) {
            vValues.append(value)
        }
    }
    
    /// Observing value type.
    public typealias Value = (O1.Value, O2.Value)
    
    /// First source observable whose changes handle current observable.
    private let sourceOne: O1
    
    /// Second source observable whose changes handle current observable.
    private let sourceTwo: O2
    
    /// Queue which encapsulate zipping mechanism.
    private let zipQueue: ZipQueue<O1.Value, O2.Value> = ZipQueue()
    
    /// Create zipper for two observables.
    ///
    /// - Parameters:
    ///   - observableOne: First observable.
    ///   - observableTwo: Second observable.
    init(observableOne: O1, observableTwo: O2) {
        sourceOne = observableOne
        sourceTwo = observableTwo
    }
    
    /// Start observe changes. Block will be called with zipped values from two observables.
    ///
    /// - Parameter onNext: Block which will be called on each observable value change while token not disposed or invalidated.
    /// - Returns: Disposable token. You should keep strong reference to it or use `DisposeBag` because object observing depends on token.
    public func observe(onNext: @escaping (Value) -> Void) -> Disposable {
        return Disposables(disposables: [
            sourceOne.observe { (value) in
                self.zipQueue.enqueue(value: value)
                
                guard let dequeue = self.zipQueue.dequeue else { return }
                
                onNext(dequeue)
            },
            sourceTwo.observe { (value) in
                self.zipQueue.enqueue(value: value)
                
                guard let dequeue = self.zipQueue.dequeue else { return }
                
                onNext(dequeue)
            }
        ])
    }
}

extension Observable {
    
    /// Zip current observable with other one. Changes from two observables will be zipped: each index of change from each observable combined with same index of change from another observable.
    ///
    /// - Parameter with: Another observable to zipping with current one.
    /// - Returns: New observable with zip feature.
    public func zip<O: Observable>(with: O) -> ZipObservable<Self, O> {
        return ZipObservable(observableOne: self, observableTwo: with)
    }
}
