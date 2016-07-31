//
//  SettingViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/26.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit


class SettingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! LikeCollectionViewCell
        cell.likeImage.clipsToBounds = true
        cell.likeImage.layer.cornerRadius = cell.likeImage.frame.size.width / 2
        
        
        
        return cell
    }
    
    


}
