//
//  Custom-Cell.swift
//  CollectionTabCreativeApp
//
//  Created by Daniel Vega on 11/7/21.
//

import Foundation
import UIKit
public class CustomCell4Life: UICollectionViewCell{
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func configure(p: UIImage) {
        imageViewOutlet.image = p
    }
}
