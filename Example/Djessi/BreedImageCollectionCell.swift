//
//  BreedImageCollectionCell.swift
//  Djessi_Example
//
//  Created by Vasily Agafonov on 06.02.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class BreedImageCollectionCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
}

extension BreedImageCollectionCell {
    
    static let identifier = "BreedImageCollectionCell"
}
