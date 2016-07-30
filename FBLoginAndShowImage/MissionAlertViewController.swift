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
    

    
    @IBAction func cancelButton(sender: AnyObject) {
        removeAnimate()
    }
    
    @IBAction func okButton(sender: AnyObject) {
        removeAnimate()
        let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc : UIViewController = mainStoryBoard.instantiateViewControllerWithIdentifier("Mission")
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
