//
//  AnnotatedPhotoCell.swift
//  MyCollectionView
//
//  Created by Сергей Молодец on 27.08.2022.
//

import UIKit

class AnnotatedPhotoCell: UICollectionViewCell {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        containerView.layer.cornerRadius = 6
        containerView.layer.masksToBounds = true
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0.0),
//            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0.0),
//            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0.0),
//            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0.0),
//        ])
    }
    var photo: Photo? {
      didSet {
        if let photo = photo {
          imageView.image = photo.image
          captionLabel.text = photo.caption
          commentLabel.text = photo.comment
        }
      }
    }
}
