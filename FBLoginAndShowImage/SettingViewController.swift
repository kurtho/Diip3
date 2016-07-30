//
//  SettingViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/26.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import Firebase

class SettingViewController: UIViewController {
    
    @IBAction func logOutFB(sender: AnyObject) {
        try! FIRAuth.auth()!.signOut()
        FBSDKAccessToken.setCurrentAccessToken(nil)
        
        let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController : UIViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("LogginView")
        self.presentViewController(viewController, animated: true, completion: nil)
    }

    @IBAction func addTabBar(sender: AnyObject) {
        tabBarController?.tabBar.items?[2].badgeValue = "1"

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
