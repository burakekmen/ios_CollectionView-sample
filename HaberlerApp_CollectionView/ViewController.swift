//
//  ViewController.swift
//  HaberlerApp_CollectionView
//
//  Created by BURAK EKMEN on 16.12.2020.
//  Copyright © 2020 Burak Ekmen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var articles = [ArticleItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let article1 = ArticleItem(image: #imageLiteral(resourceName: "Her Kız Kodlayabilir (ft. Nadin)"), caption: "TurkishKit Özel Etkinliği", title: "Her Kız Kodlayabilir")
        let article2 = ArticleItem(image: #imageLiteral(resourceName: "Sign In with Apple"), caption: "TurkishKit Blog Yazısı", title: "Sign in with Apple")
        let article3 = ArticleItem(image: #imageLiteral(resourceName: "Dub Dub '19 Etkinliği"), caption: "TurkishKit Özel Etkinliği", title: "WWDC19 Özel Etkinliği")
        let article4 = ArticleItem(image: #imageLiteral(resourceName: "Apple'da Kariyer"), caption: "TurkishKit Haberleri", title: "İçinizdeki Yeteneği Apple'da Keşfedin!")
        let article5 = ArticleItem(image: #imageLiteral(resourceName: "URLSession"), caption: "TurkishKit Blog Yazısı", title: "URLSession: İnternet ile Veri Alışverişi")
        
        articles = [article1, article2, article3, article4, article5]
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let article = articles[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleCell", for: indexPath) as? ArticleCollectionViewCell {
            
            // TurkishKit kelimesindeki büyük İ harfini kaldırmak isterdim, ama galiba örnek için biraz fazla kod olurdu :)
            
            cell.articleImage.image = article.image
            cell.captionLabel.text = article.caption //.uppercased(with: Locale(identifier: "tr"))
            cell.titleLabel.text = article.title
            return cell
            
        } else {
            return UICollectionViewCell()
        }
    }
    
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width - 16.0 * 2
        let height: CGFloat = 234.0
        
        return CGSize(width: width, height: height)
    }
}


