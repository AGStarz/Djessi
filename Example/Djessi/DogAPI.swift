//
//  DogAPI.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 12.12.2017.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

enum DogAPI {
    
    typealias BreedsListBlock = ([Breed]) -> Swift.Void
    typealias ImagesUrlsListBlock = (URL) -> Swift.Void
    
    case breedsList(BreedsListBlock)
    case breedImage(Breed, ImagesUrlsListBlock)
    
    private var url: URL {
        switch self {
        case .breedsList:
            guard let url = URL(string: "https://dog.ceo/api/breeds/list/all") else { fatalError("Can't create url") }
            return url
            
        case .breedImage(let breed, _):
            guard let url = URL(string: "https://dog.ceo/api/breed/\(breed.name)/images/random") else { fatalError("Can't create url") }
            return url
        }
    }
    
    private func json(for data: Data) throws -> Any {
        return try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
    }
    
    private func proceedBreedsList(json: [String: Any], block: @escaping ([Breed]) -> Swift.Void) {
        let breeds = (json["message"] as? [String: [String]] ?? [:])
            .map { (key, value) -> Breed in
                Breed(name: key, subBreeds: value)
            }
            .sorted { (breed1, breed2) -> Bool in
                breed1.name < breed2.name
            }
        
        block(breeds)
    }
    
    private func proceedBreedImage(json: [String: Any], block: @escaping (URL) -> Swift.Void) {
        guard let url = URL(string: json["message"] as? String ?? "") else { return }
        
        block(url)
    }
    
    func resume() {
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            let json = (try? self.json(for: data)) as? [String: Any] ?? [:]
            
            switch self {
            case .breedsList(let block):
                self.proceedBreedsList(json: json, block: block)
            case .breedImage(_, let block):
                self.proceedBreedImage(json: json, block: block)
            }
        }.resume()
    }
}
