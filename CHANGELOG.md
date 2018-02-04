0.3.6
---------

* Implement mechanism for distinct repeated followed values for all observables accessible through property `distinctUntilChanged`.
* Implement mechanism for skipping specified number of values for all observables accessible through method `skip(Int)`.
* Implement mechanism for taking only specified number of values for all observables accessible through method `take(Int)`.
* Implement throttling mechanism for all observables accessible through method `throttle(interval:queue:)`.
* Add new method to create thread support observable `deliver(on: DispatchQueue, style: GCDQueue.DispatchStyle = .async)` and can be used as followed:

```swift
import UIKit

let label = UILabel()
let _ = label.observable(at: \UILabel.text).deliver(on: .main)
```

0.3.5
---------

* `KeyPathObservable` is a class now (previously it was a protocol), remove `AnyKeyPathObservable` class (replaced with `KeyPathObservable`).
*  `Disposables` - new implementation of `Disposable` protocol, contains array of any `Disposable`.
* Add reactive extensions for `UIScrollView`.
* Update `map` method signature - remove first argument name.
* Update `flatMap` method signature - remove first argument name.
* Update `filter` method signature - remove first argument name.
* Implement combine latest feature for all observbles accessible through method `combineLatest(with:)`.

0.3.4
---------

* Separate all files to two categories `Core` & `ReactiveExtensions` through subspecs.
* Core subspec accessible via `pod Djessi/Core`, reactive extensions subspec accessible via `pod Djessi/ReactiveExtensions`, default pod `pod Djessi` retrieve both core & extension sources.

0.3.3
---------

* Proxied properties for 90% of `UIKit` classes.
* Update jazzy docs

0.3.2
---------

* Proxied properties for all `UIResponder` subclasses.
* Update jazzy docs

0.3.1
---------

* Fix demo app bug
* Fix broken docs link
* Update jazzy docs

0.3.0
---------

* Implement reactive extension feature
* Add reactive extension ability to all `NSObject`'s

```swift
import UIKit
import Djessi

@objcMembers
class Test: NSObject {
    dynamic var stringField: String = ""
}

let test = Test()
let label = UILabel()

test.observable(at: \Test.stringField).bind(to: label.asReactive.text)
```

0.2.1
---------

* Update `jazzy` documentation files

0.2.0
---------

* Generate documentation with `jazzy`
* Wrote tests, update `README` file
* Rename `TransformObservable` to `MapTransformObservable`, `ConditionObservable` to `FilterConditionObservable`
* Add `FlatMapTransformObservable` observable type

0.1.1
---------

* Advanced demo
* Enable CI & code coverage
* Update `README` file with badges

0.1.0
---------

* Core models & functions
