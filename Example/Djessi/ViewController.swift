//
//  ViewController.swift
//  Djessi
//
//  Created by JStarz on 12/11/2017.
//  Copyright (c) 2017 JStarz. All rights reserved.
//

import UIKit
import Djessi

class ViewController: UIViewController {
    
    @objcMembers
    class Test: NSObject {
        dynamic var testField: String = "Vasya"
        
        static let keyPath = \Test.testField
    }
    
    private let testModel = Test()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testModel
            .observable(at: Test.keyPath, shouldObserveInitialValue: true)
            .observe { (value) in
                print(value)
            }
            .dispose(in: disposeBag)
    }
}
