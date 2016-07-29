//
//  MissionViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/28.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class MissionViewController: UIViewController {
    @IBOutlet weak var missionImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func backWard(sender: AnyObject) {
    }
    
    @IBAction func forWard(sender: AnyObject) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        missionImage.clipsToBounds = true
        missionImage.layer.cornerRadius = missionImage.frame.size.width / 2
        tabBarController?.tabBar.items?[2].badgeValue = nil
        
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
