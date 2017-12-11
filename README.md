<img src="Assets/djessi.png" width="36" height="36"> Djessi
======

[![CI Status](http://img.shields.io/travis/JStarz/Djessi.svg?style=flat)](https://travis-ci.org/JStarz/Djessi)
[![Version](https://img.shields.io/cocoapods/v/Djessi.svg?style=flat)](http://cocoapods.org/pods/Djessi)
[![License](https://img.shields.io/cocoapods/l/Djessi.svg?style=flat)](http://cocoapods.org/pods/Djessi)
[![Platform](https://img.shields.io/cocoapods/p/Djessi.svg?style=flat)](http://cocoapods.org/pods/Djessi)

Djessi is reactive abstraction over `NSObject` based on [smart key paths](https://github.com/apple/swift-evolution/blob/master/proposals/0161-key-paths.md) & defines lightweight reactive objects for your models.

Smart key path introduced by Apple on WWDC 17, see [here](https://developer.apple.com/videos/play/wwdc2017/212/).

## Usage

0. Inherit your models from `NSObject` & mark observable fields with `@objc dynamic var` keywords (requires for [key path's](https://github.com/apple/swift-evolution/blob/master/proposals/0161-key-paths.md))

```swift
import Foundation

class Model: NSObject {
    @objc dynamic var field: String = ""
}
```

1. Use your models to create observable objects

```swift
import Foundation

class ViewModel {

    let observable: AnyKeyPathObservable<Model, String>

    init(model: Model) {
        observable = model.observable(at: \Model.field)
    }
}
```

> Observable constructor take two arguments - key path & flag which indicate observe or not initial value of variable. Default value is `true` which means that initial value will be observed. Don't forget to set it to `false` if you don't needed to observe initial value.

2. Subscribe to start listen changes

```swift
import UIKit

class ViewController: UIViewController {

    let viewModel = ViewModel(model: Model())
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.observable.observe { (value) in
            print(value)
        }.dispose(in: disposeBag)
    }
}
```

#### Important

You should keep strong reference to every `Disposable` token's to keep observation alive or use `DisposeBag` (as shown in the example above).

3. Additional functions

I will use `Model` (described in section 0) as source for observables in the next examples.

#### Bindings

You can bind any `Observable` implementation to any other `KeyPathObservable` implementation

```swift
let obj1 = Model()
let obj2 = Model()
let token = obj1.observable(at: \Model.field).bind(to: obj2.observable(at: \Model.field))
obj1.field = "Another message"
print(obj2.field) // prints 'Another message'
```

#### Threads

You should provide any implementation of `Queue` to use multi-thread observing or use already implemented lightweight wrapper over GCD - `GCDQueue`. `GCDQueue` already have implementation of `DispatchQueue.main` - you can directly access to it as `GCDQueue.asyncMain` or `GCDQueue.syncMain`.

```swift
let obj = Model()

let token = obj.observable(at: \Model.field)
    .deliver(on: GCDQueue.asyncMain)
    .observe { value in
        print("Is main thread: \(Thread.current.isMainThread)")
    }
```

#### Mapping values

You can transform your observing values to another one

```swift
let obj = Model()
obj.field = "Message"

let token = obj.observable(at: \Model.field)
    .map(transform: { $0.count as Int })
    .observe { (value) in
        print(value) // prints '7'
    }
```

#### Filtering values

You can specify condition to observe values

```swift
let obj = Model()

let token = obj.observable(at: \Model.field)
    .filter(condition: {  $0.count > 5 })
    .observe { (value) in
        print(value) // prints '123456'
    }
    
obj.field = "1234" // not observed
obj.field = "12345" // not observed
obj.field = "123456" // observed
```

## Example project

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

* Xcode 9.0

## Installation

Djessi is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Djessi'
```

## Author

AGStarz, agafonov.vasya.93@gmail.com

## License

Djessi is available under the MIT license. See the LICENSE file for more info.
