//
//  MainOnboardViewController.swift
//  onboardintest
//
//  Created by Efe Kosanoglu on 25.08.2023.
//

import UIKit

class MainOnboardViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
//    var coloredString = NSMutableAttributedString() burdan renkli yazıyı yazıp oraya aktarıcam muhtemelen
    
    
    let data: [Onboard] = [Onboard(backgorundImage: UIImage(imageLiteralResourceName: "bg"), title: "AI Trained With 360.000 Photos", lineImage: UIImage(imageLiteralResourceName: "Line"), description: "Trained with 360,000 photos, AI scores your photos based on multiple factors."),
                           Onboard(backgorundImage: UIImage(imageLiteralResourceName: "bg2"), title: "Find Your Best Photo Ever", lineImage: UIImage(imageLiteralResourceName: "Line"), description: "Analyze all your photos and instantly find your best photo ever!"),
                           Onboard(backgorundImage: UIImage(imageLiteralResourceName: "bg3"), title: "Find Your Best Photo Ever", lineImage: UIImage(imageLiteralResourceName: "Line"), description: "Analyze all your photos and instantly find your best photo ever!")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib.init(nibName: "OnboardCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "OnboardCollectionViewCell")
    }
    }
extension MainOnboardViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnboardCollectionViewCell", for: indexPath) as! OnboardCollectionViewCell
        cell.setup(with: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}





