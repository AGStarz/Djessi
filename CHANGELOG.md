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
