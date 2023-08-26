//
//  OnboardCollectionViewCell.swift
//  onboardintest
//
//  Created by Efe Kosanoglu on 25.08.2023.
//

import UIKit

class OnboardCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var line: UIImageView!
    @IBOutlet weak var descrip: UILabel!
    
    
    var onboardArray = [Onboard]()
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setup(with model: Onboard){
        background.image = model.backgorundImage
        title.text = model.title
        line.image = model.lineImage
        descrip.text = model.description
    }
}
