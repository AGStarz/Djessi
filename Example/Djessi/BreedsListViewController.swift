//
//  ViewController.swift
//  Djessi
//
//  Created by JStarz on 12/11/2017.
//  Copyright © 2018 AGStarz. All rights reserved.
//

import UIKit
import Djessi

class BreedsListViewController: UIViewController {
    
    @objcMembers
    class ViewModel: NSObject {
        dynamic var breeds: [DogAPI.Breed] = []
        dynamic var title: String = "Dog breeds"
        
        override init() {
            super.init()
            
            DogAPI
                .breedsList
                .request { (response: DogAPI.Breeds?) in
                    self.breeds = response?.breeds ?? []
                }
        }
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    
    private var breeds: [String] = [] {
        didSet {
            tableView.reloadData()
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
            .observable(at: \ViewModel.breeds)
            .deliver(on: GCDQueue.asyncMain)
            .observe(onNext: { self.breeds = $0 })
            .dispose(in: disposeBag)
    }
}

extension BreedsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return breeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        setup(cell: cell, breed: breeds[indexPath.row])
        
        return cell
    }
    
    private func setup(cell: UITableViewCell, breed: DogAPI.Breed) {
        cell.textLabel?.text = breed.capitalized
    }
}

extension BreedsListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: BreedImageViewController.identifier) as? BreedImageViewController else { return }
        
        vc.viewModel = BreedImageViewController.ViewModel(breed: breeds[indexPath.row])
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
