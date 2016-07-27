//
//  SignUpChooseImageViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/20.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class SignUpChooseImageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var choose = 0
    var any: AnyObject?
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBAction func backWard(sender: AnyObject) {
        choose -= 1
        if choose <= -1 {
            choose = 3
        }
        collectionView.reloadData()
    }
    @IBAction func forWard(sender: AnyObject) {
        choose += 1
        if choose >= 4 {
            choose = 0
        }
        print("forWard Button~~~\(ProfilePictureList.pic[choose].name)")
        collectionView.reloadData()
    }
    @IBAction func signUp(sender: AnyObject) {
        
        
    }


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.layer.cornerRadius = self.collectionView.frame.size.width/2
        self.collectionView.clipsToBounds = true
        
        self.navigationController!.navigationBar.hidden = false


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProfilePictureList.pic.count
    }
    
    
    
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("ProfileCell", forIndexPath: indexPath) as! SignUpChooseImageCollectionViewCell
        
        cell.chooseImage.image = UIImage(named: ProfilePictureList.pic[choose].name)
        
        return cell
    }


    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "headProfile" {
            let destination = segue.destinationViewController as! SetQuestionViewController
            destination.imageName = ProfilePictureList.pic[choose].name


        }
    }
    
    

    



}
