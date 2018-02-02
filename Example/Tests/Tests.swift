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
            .filter({ $0.count > 10 })
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
            .map({ ($0, $0.count as Int) })
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
            .flatMap({ $0 })
            .observe { (value) in
                XCTAssert(value == self.newValueConstant)
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        object.optionalField = newValueConstant
        
        wait(for: [expectation], timeout: 1)
    }
}

// MARK: - Reactive extensions

extension Tests {
    
    @objcMembers
    class ReactiveExtensionModel: NSObject {
        dynamic var integerField: Int = 0
        dynamic var stringField: String = "Test"
        dynamic var boolField: Bool = true
    }
    
    // MARK: UIApplication
    
    func testBadgeNumber() {
        let application = UIApplication.shared
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.integerField)
            .bind(to: application.asReactive.applicationIconBadgeNumber)
            .dispose(in: disposeBag)
        
        XCTAssert(application.applicationIconBadgeNumber == 0)
        
        object.integerField = 3
        
        XCTAssert(application.applicationIconBadgeNumber == 3)
    }
    
    func testShakeToEdit() {
        let application = UIApplication.shared
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: application.asReactive.applicationSupportsShakeToEdit)
            .dispose(in: disposeBag)
        
        XCTAssert(application.applicationSupportsShakeToEdit)
        
        object.boolField = !object.boolField
        
        XCTAssert(!application.applicationSupportsShakeToEdit)
    }
    
    func testIdleTimer() {
        let application = UIApplication.shared
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: application.asReactive.isIdleTimerDisabled)
            .dispose(in: disposeBag)
        
        XCTAssert(application.isIdleTimerDisabled)
        
        object.boolField = !object.boolField
        
        XCTAssert(!application.isIdleTimerDisabled)
    }
    
    func testNetworkActivityIndicator() {
        let application = UIApplication.shared
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: application.asReactive.isNetworkActivityIndicatorVisible)
            .dispose(in: disposeBag)
        
        XCTAssert(application.isNetworkActivityIndicatorVisible)
        
        object.boolField = !object.boolField
        
        XCTAssert(!application.isNetworkActivityIndicatorVisible)
    }
    
    // MARK: UIViewController
    
    func testViewControllerTitle() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.stringField)
            .bind(to: vc.asReactive.title)
            .dispose(in: disposeBag)
        
        object.stringField = newValueConstant
        
        XCTAssert(vc.title == newValueConstant)
    }
    
    func testViewControllerRestorationIdentifier() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.stringField)
            .bind(to: vc.asReactive.restorationIdentifier)
            .dispose(in: disposeBag)
        
        object.stringField = newValueConstant
        
        XCTAssert(vc.restorationIdentifier == newValueConstant)
    }
    
    func testAdjustsScrollViewInsets() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.automaticallyAdjustsScrollViewInsets)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.automaticallyAdjustsScrollViewInsets)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.automaticallyAdjustsScrollViewInsets)
    }
    
    func testDefinesPresentationContext() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.definesPresentationContext)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.definesPresentationContext)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.definesPresentationContext)
    }
    
    func testExtendedLayoutIncludesOpaqueBars() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.extendedLayoutIncludesOpaqueBars)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.extendedLayoutIncludesOpaqueBars)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.extendedLayoutIncludesOpaqueBars)
    }
    
    func testIsEditing() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.isEditing)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.isEditing)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.isEditing)
    }
    
    func testModalPresentationCapturesStatusBarAppearance() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.modalPresentationCapturesStatusBarAppearance)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.modalPresentationCapturesStatusBarAppearance)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.modalPresentationCapturesStatusBarAppearance)
    }
    
    func testProvidesPresentationContextTransitionStyle() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.providesPresentationContextTransitionStyle)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.providesPresentationContextTransitionStyle)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.providesPresentationContextTransitionStyle)
    }
    
    func testRestoresFocusAfterTransition() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.restoresFocusAfterTransition)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.restoresFocusAfterTransition)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.restoresFocusAfterTransition)
    }
    
    @available(iOS 11.0, *)
    func testRespectsSystemMinimumLayoutMargins() {
        let vc = UIViewController()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: vc.asReactive.viewRespectsSystemMinimumLayoutMargins)
            .dispose(in: disposeBag)
        
        XCTAssert(vc.viewRespectsSystemMinimumLayoutMargins)
        
        object.boolField = !object.boolField
        
        XCTAssert(!vc.viewRespectsSystemMinimumLayoutMargins)
    }
    
    // MARK: UIView
    
    func testAutoresizesSubviews() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.autoresizesSubviews)
            .dispose(in: disposeBag)
        
        XCTAssert(view.autoresizesSubviews)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.autoresizesSubviews)
    }
    
    @available(iOS 11.0, *)
    func testIgnoresInvertColors() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.accessibilityIgnoresInvertColors)
            .dispose(in: disposeBag)
        
        XCTAssert(view.accessibilityIgnoresInvertColors)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.accessibilityIgnoresInvertColors)
    }
    
    func testClearsContextBeforeDrawing() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.clearsContextBeforeDrawing)
            .dispose(in: disposeBag)
        
        XCTAssert(view.clearsContextBeforeDrawing)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.clearsContextBeforeDrawing)
    }
    
    func testClipsToBounds() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.clipsToBounds)
            .dispose(in: disposeBag)
        
        XCTAssert(view.clipsToBounds)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.clipsToBounds)
    }
    
    @available(iOS 11.0, *)
    func testInsetsLayoutMarginsFromSafeArea() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.insetsLayoutMarginsFromSafeArea)
            .dispose(in: disposeBag)
        
        XCTAssert(view.insetsLayoutMarginsFromSafeArea)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.insetsLayoutMarginsFromSafeArea)
    }
    
    func testExclusiveTouch() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.isExclusiveTouch)
            .dispose(in: disposeBag)
        
        XCTAssert(view.isExclusiveTouch)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.isExclusiveTouch)
    }
    
    func testIsHidden() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.isHidden)
            .dispose(in: disposeBag)
        
        XCTAssert(view.isHidden)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.isHidden)
    }
    
    func testMultipleTouchEnabled() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.isMultipleTouchEnabled)
            .dispose(in: disposeBag)
        
        XCTAssert(view.isMultipleTouchEnabled)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.isMultipleTouchEnabled)
    }
    
    func testOpaque() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.isOpaque)
            .dispose(in: disposeBag)
        
        XCTAssert(view.isOpaque)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.isOpaque)
    }
    
    func testUserInteractionEnabled() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.isUserInteractionEnabled)
            .dispose(in: disposeBag)
        
        XCTAssert(view.isUserInteractionEnabled)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.isUserInteractionEnabled)
    }
    
    func testSuperviewLayoutMargins() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.preservesSuperviewLayoutMargins)
            .dispose(in: disposeBag)
        
        XCTAssert(view.preservesSuperviewLayoutMargins)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.preservesSuperviewLayoutMargins)
    }
    
    func testTranslatesAutoresizingMaskIntoConstraints() {
        let view = UIView()
        let object = ReactiveExtensionModel()
        
        object.observable(at: \ReactiveExtensionModel.boolField)
            .bind(to: view.asReactive.translatesAutoresizingMaskIntoConstraints)
            .dispose(in: disposeBag)
        
        XCTAssert(view.translatesAutoresizingMaskIntoConstraints)
        
        object.boolField = !object.boolField
        
        XCTAssert(!view.translatesAutoresizingMaskIntoConstraints)
    }
    
    // MARK: - Combine latest
    
    func testCombineLatestObservable() {
        let expectation = XCTestExpectation(description: "Expectation")
        
        let label1 = UILabel()
        let observable1 = label1.asReactive.text.flatMap({ $0 })
        let label2 = UILabel()
        let observable2 = label2.asReactive.text.flatMap({ $0 })
        
        observable1
            .combineLatest(with: observable2)
            .observe { (value) in
                XCTAssert(value.0 == "123")
                XCTAssert(value.1 == "345")
                
                expectation.fulfill()
            }
            .dispose(in: disposeBag)
        
        label1.text = "123"
        label2.text = "345"
        
        wait(for: [expectation], timeout: 1)
    }
    
    // MARK: - Distinct until changed
    
    func testDistinctUntilChanged() {
        var changesCounter = 0
        
        let label = UILabel()
        label.asReactive
            .text
            .flatMap({ $0 })
            .distinctUntilChanged
            .observe { (value) in
                changesCounter = changesCounter + 1
            }
            .dispose(in: disposeBag)
        
        label.text = "123"
        label.text = "123"
        label.text = "123"
        label.text = "345"
        label.text = "345"
        
        XCTAssert(changesCounter == 2)
    }
}
