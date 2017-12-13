//
//  Breed.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 12.12.2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

class Breed: NSObject {
    let name: String
    let subBreeds: [String]
    
    init(name n: String, subBreeds s: [String]) {
        name = n
        subBreeds = s
    }
}
