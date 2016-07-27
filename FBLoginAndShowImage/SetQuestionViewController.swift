//
//  SetQuestionViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/25.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class SetQuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var collectionCell: UIView!
    
    var imageName: String?
    
    @IBAction func segmentAction(sender: AnyObject) {
        segmentSelect()
        tableView.reloadData()
    }
    
   

    
    let cellValue = ["我最吸引人的地方是","我喜歡與什麼樣的人相處"]
    let collectPic = ["add"]
    let collectLabel = ["add a Question"]
    
    var segmentNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        profileImage.image = UIImage(named: imageName!)
        profileImage.clipsToBounds = true
        profileImage.layer.cornerRadius = profileImage.frame.size.width/2
        collectionView.backgroundColor = UIColor.lightGrayColor()
        
        tableView.backgroundColor = UIColor.lightGrayColor()
        
        collectionView.hidden = true
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let width = (UIScreen.mainScreen().bounds.width - 2*5)/2
        layout.itemSize = CGSizeMake(CGFloat(width), CGFloat(width) )
//        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segmentSelect() {
        switch mySegment.selectedSegmentIndex {
        case 0:
            tableView.hidden = false
            collectionView.hidden = true
            break
        case 1:
            tableView.hidden = true
            collectionView.hidden = false
            
            break
        default:
            break
        }
    }
    
  // MARK: - table view cell
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellValue.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! BasicSegmentTableViewCell
        cell.cellView?.clipsToBounds = true
        cell.cellView?.layer.cornerRadius = cell.cellView.frame.size.width/18
        cell.label?.text = cellValue[indexPath.row]
        
        
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let questions = cellValue[indexPath.row]
        testFunction(questions)
        
        
    }

    func tableView(tableView: UITableView, didEndEditingRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    // MARK: - collection view cell
    
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectPic.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as! QAndACollectionViewCell
        cell.backgroundColor = UIColor.whiteColor()
        cell.clipsToBounds = true
        cell.layer.cornerRadius = cell.frame.size.width/16
        cell.label.text = collectLabel[indexPath.row]
        cell.image.image = UIImage(named: collectPic[indexPath.row])
        return cell
    }


    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        showPopUp()
        
    }
    
    
    
 // MARK:d - Pop up view
    
    
    func showPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("edit") as!
        EditAndTypeViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
    }
    
    func testFunction(string: String) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("edit") as! EditAndTypeViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        popOverVC.textContent.text = string
    
    }
    
}


