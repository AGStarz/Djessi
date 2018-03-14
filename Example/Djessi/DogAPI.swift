//
//  DogAPI.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 12.12.2017.
//  Copyright © 2018 AGStarz. All rights reserved.
//

import Foundation

enum DogAPI {
    
    typealias Breed = String
    
    struct Breeds: Codable {
        let breeds: [Breed]
        
        enum CodingKeys: String, CodingKey {
            case breeds = "message"
        }
    }
    
    struct BreedImages: Codable {
        let images: [String]
        
        enum CodingKeys: String, CodingKey {
            case images = "message"
        }
    }
    
    case breedsList
    case breedImages(Breed)
    
    private var url: URL {
        switch self {
        case .breedsList:
            guard let url = URL(string: "https://dog.ceo/api/breeds/list") else { fatalError("Can't create url") }
            return url
            
        case .breedImages(let breed):
            guard let url = URL(string: "https://dog.ceo/api/breed/\(breed)/images") else { fatalError("Can't create url") }
            return url
        }
    }
    
    func request<T: Decodable>(onComplete: @escaping (T?) -> Swift.Void) {
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {
                onComplete(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(T.self, from: data)
            
            onComplete(response)
        }.resume()
    }
}
