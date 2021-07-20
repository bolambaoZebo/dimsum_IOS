//
//  ViewController.swift
//  Dimsum
//
//  Created by 96group on 7/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet var blurPopUp: UIVisualEffectView!
    @IBOutlet var popUpView: UIView!
    
    var newViewController: DetailRecipeViewController?
    
    @IBAction func hidePopUp(_ sender: Any) {
        animateOut(controller: newViewController!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
       \
    }

}

extension ViewController{
    
    func popShow(){
        blurPopUp.bounds = self.view.bounds
        
        popUpView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.9, height: self.view.bounds.height * 0.4)
        
        animateIn(desiredView: blurPopUp)
        animateIn(desiredView: popUpView)

    }
    
    func animateIn(desiredView: UIView){
        let backgroundView = self.view!
        
        backgroundView.addSubview(desiredView)
        
        desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
        desiredView.center = backgroundView.center
        
        UIView.animate(withDuration: 0.3, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
        })
    }
    
    func animateOut(controller: UIViewController){
        
        UIView.animate(withDuration: 0.3, animations: {
            self.blurPopUp.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.blurPopUp.alpha = 0
        })
        
        UIView.animate(withDuration: 0.3, animations: {
            self.popUpView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            self.popUpView.alpha = 0
        }, completion: { _ in
            self.blurPopUp.removeFromSuperview()
            self.popUpView.removeFromSuperview()
            
            self.navigationController?.present(controller, animated: true)
        })
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dimSums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCollectionViewCell", for: indexPath) as! HomeCollectionViewCollectionViewCell
        
        cell.setupView(with: dimSums[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        newViewController = DetailRecipeViewController()
        newViewController!.contentImg = dimSums[indexPath.row].detail
        newViewController!.headerImg = dimSums[indexPath.row].headerImage
        popShow()
       
    }
}

