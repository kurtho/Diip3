//
//  EditAndTypeViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/26.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class EditAndTypeViewController: UIViewController, UITextViewDelegate {
    var basicQuestion: UserBasic?
    
    
    

    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var textContent: UILabel!
    
    
    @IBAction func cancelButton(sender: AnyObject) {
        removeAnimate()
    }
    
    @IBAction func sendButton(sender: AnyObject) {
        CurrentUserBasic.shareInstance.basicQuestion?.answer.append(myTextView.text)
        removeAnimate()
        print("text view ~~~\(CurrentUserBasic.shareInstance.basicQuestion?.answer)")
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
    
    
    

    


    

    
    
    
}

extension UIViewController {
    func removeAnimate()
    {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
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
    
    func showAnimation() {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3)
        self.view.alpha = 0.0
        UIView.animateWithDuration(0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    
    func showPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("misionAlert") as!
        MissionAlertViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
    }
    func showAlert() {
    if tabBarController?.tabBar.items?[2].badgeValue != nil {
    showAnimation()
    showPopUp()
    }
    tabBarController?.tabBar.items?[2].badgeValue = nil
    }
}



