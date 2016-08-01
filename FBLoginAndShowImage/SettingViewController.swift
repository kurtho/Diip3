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
        return Friend.friendList.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("collectionCell", forIndexPath: indexPath) as! LikeCollectionViewCell
        cell.layer.cornerRadius = cell.frame.size.width / 16
        cell.clipsToBounds = true
        
        cell.likeImage.clipsToBounds = true
        cell.likeImage.layer.cornerRadius = cell.likeImage.frame.size.width / 2
        cell.likeImage.image = UIImage(named: Friend.friendList[indexPath.row].image)
        cell.progressView.setValue(CGFloat(Friend.friendList[indexPath.row].percent), animateWithDuration: 3)

        //        動畫不會跑??
        cell.likeName.text = Friend.friendList[indexPath.row].name
        cell.liketitle.text = Friend.friendList[indexPath.row].title
        return cell
    }
    
    


}
