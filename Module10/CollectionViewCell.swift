//
//  CollectionViewCell.swift
//  Module10
//
//  Created by username on 08.11.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UIImageView!
        
    @IBOutlet weak var discountLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var newPriceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
}
