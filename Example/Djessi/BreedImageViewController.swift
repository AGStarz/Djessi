//
//  BreedImageViewController.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 12.12.2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import Djessi

class BreedImageViewController: UIViewController {
    
    @objcMembers
    class ViewModel: NSObject {
        dynamic var breedImage: UIImage? = nil
        dynamic var title: String = ""
        
        init(breed: Breed) {
            super.init()
            
            title = breed.name.capitalized
            
            DogAPI
                .breedImage(breed) { (url) in
                    URLSession.shared.dataTask(with: url) { (data, _, _) in
                        guard let data = data else { return }
                        
                        self.breedImage = UIImage(data: data)
                    }.resume()
                }.resume()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var viewModel: ViewModel!
    
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel
            .observable(at: \ViewModel.title)
            .deliver(on: GCDQueue.asyncMain)
            .bind(to: navigationItem.observable(at: \UINavigationItem.title))
            .dispose(in: disposeBag)
        
        viewModel
            .observable(at: \ViewModel.breedImage)
            .deliver(on: GCDQueue.asyncMain)
            .map(transform: { $0 != nil })
            .bind(to: activityIndicator.asReactive.isHidden)
            .dispose(in: disposeBag)
        
        viewModel
            .observable(at: \ViewModel.breedImage)
            .deliver(on: GCDQueue.asyncMain)
            .flatMap(transform: { $0 })
            .bind(to: imageView.asReactive.image)
            .dispose(in: disposeBag)
    }
}

extension BreedImageViewController {
    
    static let identifier = "BreedImageViewController"
}