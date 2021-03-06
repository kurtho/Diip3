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
    
    let caseTwo = ["1", "2", "3", "4", "sky"]
    
    let caseThree = ["backGround"]
    
    @IBOutlet weak var collectionView: UICollectionView!

    
    @IBAction func buttonOne(sender: AnyObject) {
        select4Button = 0
        collectionView.reloadData()
    }
    @IBAction func buttonTwo(sender: AnyObject) {
        select4Button = 1
        collectionView.reloadData()
    }
    @IBAction func buttonThree(sender: AnyObject) {
        select4Button = 2
        collectionView.reloadData()
    }
    @IBAction func buttonFour(sender: AnyObject) {
        select4Button = 3
        collectionView.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.tabBar.items?[2].badgeValue = "1"
        //        tabBarController?.tabBar.items?.first?.badgeValue = "1st"
        //        tabBarController?.tabBar.items?[1].badgeValue = "2nd"
        //        tabBarController?.tabBar.items?.last?.badgeValue = "Last"

        
//        let layout = self.collectionView as! UICollectionViewFlowLayout
//        //        let width = (Float(UIScreen.mainScreen().bounds.width) - spacingWidth * Float(4 + 1)) / 4
//        let width = (UIScreen.mainScreen().bounds.width - 2*5)/2
//        layout.itemSize = CGSizeMake(CGFloat(width), CGFloat(width) )
//                layout.sectionInset = UIEdgeInsets(top: 2, left: 2, bottom: 2, right: 2)
//                layout.itemSize = CGSizceMake(CGFloat(width), CGFloat(width) )
        
    }

    override func viewWillAppear(animated: Bool) {
        showAlert()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var returnValue = 0
        switch select4Button {
        case 0:
            returnValue = caseZero.count
            print("return value~~~ \(returnValue)")
            break
        case 1:
            returnValue = caseOne.count
            
            break
        case 2:
            returnValue = caseTwo.count
            break
        case 3:
            returnValue = caseThree.count
            break
        default:
            break
        }
        return returnValue
//            return caseTwo.count
    }

    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {

            return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath) as! SearchQACollectionViewCell
        
        switch select4Button {
        case 0:
            cell.cellImage.image = UIImage(named: caseZero[indexPath.row])

            break
        case 1:
            cell.cellImage.image = UIImage(named: caseOne[indexPath.row])

            break
        case 2:
            cell.cellImage.image = UIImage(named: caseTwo[indexPath.row])
            
            break
        case 3:
            cell.cellImage.image = UIImage(named: caseThree[indexPath.row])
            
            break
        default:
            break
        }
        
//        let bgColorView = UIView()
//        bgColorView.frame = CGRectMake(5, 5, (collectionView.frame.width)-10, (cell.frame.height)-10)
//        bgColorView.backgroundColor = UIColor.clearColor();
//        cell.selectedBackgroundView = bgColorView
//        let myBackView=UIView(frame:cell.frame)
//        myBackView.frame = CGRectMake(5, 5, (collectionView.frame.width)-10, (cell.frame.height)-10)
//        myBackView.backgroundColor = UIColor.whiteColor();
//        myBackView.layer.masksToBounds = false
//        myBackView.clipsToBounds = false
//        myBackView.layer.cornerRadius = 3
//        myBackView.layer.shadowOffset = CGSizeMake(-1, 1)
//        myBackView.layer.shadowRadius = 2
//        myBackView.layer.shadowOpacity = 0.4;
//        let test:CGRect = myBackView.layer.bounds
//        myBackView.layer.shadowPath = UIBezierPath(rect: test).CGPath
//        cell.addSubview(myBackView)
//        cell.sendSubviewToBack(myBackView)

        cell.layer.borderColor = UIColor.darkGrayColor().CGColor
        cell.layer.borderWidth = 2.0
        cell.layer.cornerRadius = 4
        
        
        return cell
    }
    

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake((self.view.frame.size.width / 2) - 15, (self.view.frame.size.width) - 120)
    }
    

}
