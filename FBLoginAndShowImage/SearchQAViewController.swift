//
//  SearchQAViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/28.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class SearchQAViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var select4Button = 0
    let caseZero = ["moon", "sky"]
    let caseOne = ["sky", "moon", "backGround", "backGround1"]
    let caseTwo = ["1", "2", "3", "4"]
    let caseThree = []
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch select4Button {
        case 0:
            select4Button = caseZero.count
            break
        case 1:
            select4Button = caseOne.count
            break
        case 2:
            select4Button = caseTwo.count
            break
        case 3:
            select4Button = caseThree.count
            break
        default:
            break
        }
        return select4Button
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {

        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath)
        
        
        return cell
    }
    
    

}
