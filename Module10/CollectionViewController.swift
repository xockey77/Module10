//
//  CollectionViewController.swift
//  Module10
//
//  Created by username on 08.11.2021.
//

import UIKit
   
class CollectionViewController: UICollectionViewController {
    
    private let collectionData: [BSWItemData] = BSWCollectionFabric.collectionBSW()
    
    private let reuseIdentifier = "Shop Cell"
    
    private let sectionInsets = UIEdgeInsets(
      top: 30.0,
      left: 20.0,
      bottom: 30.0,
      right: 20.0)
    
    private let itemsPerRow: CGFloat = 2
    private let itemAspectRatio: CGFloat = 1.9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return collectionData.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: collectionData[indexPath.row].pictName)
        cell.discountLabel.text = "\(collectionData[indexPath.row].discount)%"
        cell.oldPriceLabel.text = "\(collectionData[indexPath.row].oldPrice) руб."
        cell.newPriceLabel.text = "\(collectionData[indexPath.row].newPrice) руб."
        cell.nameLabel.text = collectionData[indexPath.row].name
        
        return cell
      }
    
}

// MARK: - Collection View Flow Layout Delegate

extension CollectionViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
 
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
    
        return CGSize(width: widthPerItem, height: widthPerItem * itemAspectRatio)
    }
  
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
  
 
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }

}

