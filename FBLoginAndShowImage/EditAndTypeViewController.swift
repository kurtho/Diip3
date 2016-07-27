//
//  EditAndTypeViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/26.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class EditAndTypeViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var textContent: UILabel!
    
    
    @IBAction func cancelButton(sender: AnyObject) {
        removeAnimate()
    }
    
    @IBAction func sendButton(sender: AnyObject) {
    }
    
    @IBAction func invisibleButton(sender: AnyObject) {
        removeAnimate()

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myView.clipsToBounds = true
        self.myView.layer.cornerRadius = myView.frame.size.width / 15
        
        showAnimation()
        myTextView.becomeFirstResponder()
        hideKeyboardWhenTappedAround()
        
        self.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
        
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
        self.navigationController?.setNavigationBarHidden(true, animated: true)

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
            self.view.alpha = 0.0
            }, completion:{(finished : Bool)  in
                if (finished)
                {
                    self.view.removeFromSuperview()
                }
        });
        self.navigationController?.setNavigationBarHidden(false, animated: true)

    }

    

    
    
    
}




