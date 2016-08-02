//
//  MissionAlertViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/30.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class MissionAlertViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!

    @IBOutlet weak var missionView: UIView!
    @IBOutlet weak var okButton: UIButton!
    

    
    @IBAction func cancelButton(sender: AnyObject) {
        removeAnimate()
    }
    
    
    

    
    @IBAction func okButton(sender: AnyObject) {
        removeAnimate()
        let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc  = mainStoryBoard.instantiateViewControllerWithIdentifier("HomeView") as! UITabBarController
            vc.selectedIndex = 2
        self.presentViewController(vc, animated: true, completion: nil)

        

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
        self.missionView.layer.cornerRadius = 8
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "tab2" {
//            let destination = segue.destinationViewController as! UITabBarController
//            destination.selectedIndex = 3
//        }
//    }


}
