//
//  EditAndTypeViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/26.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class EditAndTypeViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myTextView: UIView!
    
    
    @IBAction func invisibleButton(sender: AnyObject) {
        removeAnimate()
        self.navigationController?.setNavigationBarHidden(false, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimation()
        myTextView.becomeFirstResponder()
        hideKeyboardWhenTappedAround()
        
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
        //        self.navigationController?.navigationBarHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
    
    
    
    func showAnimation() {
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
        self.view.alpha = 0.0
        UIView.animateWithDuration(0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    func removeAnimate()
    {
        UIView.animateWithDuration(0.25, animations: {
            self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
            self.view.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                    self.view.removeFromSuperview()
                }
        });
    }

}




