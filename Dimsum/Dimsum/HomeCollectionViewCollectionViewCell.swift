//
//  HomeCollectionViewCollectionViewCell.swift
//  Dimsum
//
//  Created by 96group on 7/19/21.
//

import UIKit

class HomeCollectionViewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var foodTxt: UILabel!
    
    func setupView(with dimSum: DimSum){
        imageCell.image = dimSum.image
        foodTxt.text = dimSum.name
    }
    
}
