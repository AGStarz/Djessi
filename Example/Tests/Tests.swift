import UIKit
import XCTest
import Djessi

class Tests: XCTestCase {
    
    @objcMembers
    class Test: NSObject {
        dynamic var field: String
        dynamic var optionalField: String? = nil
        
        init(value: String) {
            field = value
        }
        
        static let keyPath = \Test.field
    }
    
    private var disposeBag = DisposeBag()
    
    private let initialValueConstant = "Initial value"
    private let newValueConstant = "New value"
    private let emptyValueConstant = ""
    
    override func tearDown() {
        disposeBag = DisposeBag()
        
        super.tearDown()
    }
    
    func testInitialValueObserve() {
        let expectation = XCTestExpectation(description: "Initial value observe")
        let object = Test(value: initialValueConstant)
        
        object
            .observable(at: \Test.field, shouldObserveInitialValue: true)
            .observe { (value) in
                XCTAssert(value == self.initialValueConstant)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testValueChangesObserve() {
        let expectation = XCTestExpectation(description: "Value changes observe")
        let object = Test(value: initialValueConstant)
        
        object
            .observable(at: Test.keyPath, shouldObserveInitialValue: false)
            .observe { (value) in
                XCTAssert(value == self.newValueConstant)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        object.field = newValueConstant
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testThreading() {
        let mainThreadExpectation = XCTestExpectation(description: "Main thread")
        let globalThreadExpectation = XCTestExpectation(description: "Global thread")
        let object = Test(value: initialValueConstant)
        
        object
            .observable(at: Test.keyPath)
            .deliver(on: GCDQueue.asyncMain)
            .observe { (value) in
                XCTAssert(value == self.initialValueConstant)
                XCTAssert(Thread.current.isMainThread)
                
                mainThreadExpectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        
        object
            .observable(at: Test.keyPath)
            .deliver(on: GCDQueue(queue: .global()))
            .observe { (value) in
                XCTAssert(value == self.initialValueConstant)
                XCTAssert(!Thread.current.isMainThread)
                
                globalThreadExpectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        wait(for: [mainThreadExpectation, globalThreadExpectation], timeout: 1)
    }
    
    func testBinding() {
        let object1 = Test(value: initialValueConstant)
        let object2 = Test(value: initialValueConstant)
        
        object1
            .observable(at: Test.keyPath)
            .bind(to: object2.observable(at: Test.keyPath))
            .dispose(in: disposeBag)
        
        object1.field = newValueConstant
        XCTAssert(object2.field == newValueConstant)
        
        object1.field = emptyValueConstant
        XCTAssert(object2.field == emptyValueConstant)
    }
    
    func testFiltering() {
        let expectation = XCTestExpectation(description: "Filter expectation")
        let object = Test(value: emptyValueConstant)
        
        object
            .observable(at: Test.keyPath)
            .filter(condition: { $0.count > 10 })
            .observe { (value) in
                XCTAssert(value.count > 10)
                
                // this assert valid because i use for testing only 3 strings
                // for more complex filter testing you should specify string before assert
                XCTAssert(value == self.initialValueConstant)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        object.field = newValueConstant
        object.field = emptyValueConstant
        object.field = initialValueConstant
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testMapping() {
        let expectation = XCTestExpectation(description: "Map expectation")
        let object = Test(value: initialValueConstant)
        
        object
            .observable(at: Test.keyPath)
            .map(transform: { ($0, $0.count as Int) })
            .observe { (value) in
                XCTAssert(value.0.count == value.1)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testFlatMapping() {
        let expectation = XCTestExpectation(description: "Flat map expectation")
        let object = Test(value: initialValueConstant)
        
        object
            .observable(at: \Test.optionalField)
            .flatMap(transform: { $0 })
            .observe { (value) in
                XCTAssert(value == self.newValueConstant)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        object.optionalField = newValueConstant
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testCreation() {
        let object = Test(value: initialValueConstant)
        let observable = object.observable(at: \Test.optionalField)
        
        XCTAssert(observable.source == object)
        XCTAssert(observable.keyPath == \Test.optionalField)
    }
}
