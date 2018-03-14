//
//  BreedImageViewController.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 12.12.2017.
//  Copyright © 2018 AGStarz. All rights reserved.
//

import UIKit
import Djessi

class BreedImageViewController: UIViewController {
    
    @objcMembers
    class ViewModel: NSObject {
        
        @objcMembers
        class BreedImage: NSObject {
            dynamic var breedImage: UIImage? = nil
            
            init(url: URL) {
                super.init()
                
                URLSession.shared.dataTask(with: url) { (data, _, _) in
                    guard let data = data else { return }
                    
                    self.breedImage = UIImage(data: data)
                }.resume()
            }
        }
        
        dynamic var breedImages: [BreedImage] = []
        dynamic var title: String = ""
        
        init(breed: DogAPI.Breed) {
            super.init()
            
            title = breed.capitalized
            
            DogAPI
                .breedImages(breed)
                .request { (response: DogAPI.BreedImages?) in
                    self.breedImages = (response?.images ?? [])
                        .flatMap({ URL(string: $0) })
                        .map({ BreedImage(url: $0) })
                }
        }
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel: ViewModel!
    
    private let disposeBag = DisposeBag()
    
    private var breedImages: [ViewModel.BreedImage] = [] {
        didSet {
            collectionView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel
            .observable(at: \ViewModel.title)
            .deliver(on: GCDQueue.asyncMain)
            .bind(to: navigationItem.asReactive.title)
            .dispose(in: disposeBag)
        
        viewModel
            .observable(at: \ViewModel.breedImages)
            .deliver(on: .main)
            .observe(onNext: { self.breedImages = $0 })
            .dispose(in: disposeBag)
    }
}

extension BreedImageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return breedImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BreedImageCollectionCell.identifier, for: indexPath) as? BreedImageCollectionCell else { return UICollectionViewCell() }
        
        setup(cell: cell, breedImage: breedImages[indexPath.row])
        
        return cell
    }
    
    private func setup(cell: BreedImageCollectionCell, breedImage: ViewModel.BreedImage) {
        let observable = breedImage
            .observable(at: \ViewModel.BreedImage.breedImage)
            .deliver(on: .main)
        
        observable
            .map({ $0 != nil })
            .bind(to: cell.activityIndicator.asReactive.isHidden)
            .dispose(in: disposeBag)
        
        observable
            .flatMap({ $0 })
            .bind(to: cell.imageView.asReactive.image)
            .dispose(in: disposeBag)
    }
}

extension BreedImageViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size
    }
}

extension BreedImageViewController {
    
    static let identifier = "BreedImageViewController"
}
