//
//  OnboadingCollectionViewCell.swift
//  Yummie
//
//  Created by Alandis Seals on 2/2/22.
//

import UIKit

class OnboadingCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: OnboadingCollectionViewCell.self)
    
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideDescriptionLabel: UILabel!
    
    func setup(_ slide: OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitleLabel.text = slide.title
        slideDescriptionLabel.text = slide.description
    }
}
