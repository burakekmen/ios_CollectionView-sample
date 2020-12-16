//
//  ArticleCollectionViewCell.swift
//  HaberlerApp_CollectionView
//
//  Created by BURAK EKMEN on 16.12.2020.
//  Copyright © 2020 Burak Ekmen. All rights reserved.
//

import UIKit

@IBDesignable class ArticleCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
