//
//  DetailRecipeViewController.swift
//  Dimsum
//
//  Created by 96group on 7/19/21.
//

import UIKit

//protocol DetailRecipeViewControllerDelegate {
//    func setup(contentImg: UIImage,headerImg: UIImage)
//}

class DetailRecipeViewController: UIViewController {

    var contentImg: UIImage = dimSums[0].image
    var headerImg: UIImage = dimSums[0].detail
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var headerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAllView()
    }
    
    func setupAllView(){
//        textLabel?.text = text
        contentImage.image = contentImg
        headerImage.image = headerImg
    }
    
}
