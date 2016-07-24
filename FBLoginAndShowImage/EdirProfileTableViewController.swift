//
//  EdirProfileTableViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/13.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class EdirProfileTableViewController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate, UITextViewDelegate {



    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    var tempImage = UIImage()
    var tempImageNumber = 0
    
    @IBAction func headImageAction1(sender: AnyObject) {
        tempImageNumber = 1
        photoPicker()
    }
    @IBAction func headImageAction2(sender: AnyObject) {
        tempImageNumber = 2
        photoPicker()
    }
    @IBAction func headImageAction3(sender: AnyObject) {
        tempImageNumber = 3
        photoPicker()
    }
    @IBAction func headImageAction4(sender: AnyObject) {
        tempImageNumber = 4
        photoPicker()
    }
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var birthTextField: UITextField!
    @IBOutlet weak var placeTextField: UITextField!
    @IBOutlet weak var relationTextField: UITextField!
    @IBOutlet weak var aboutMe: UITextView!
    @IBOutlet weak var traitTextField: UITextField!



    @IBAction func genderEdit(sender: AnyObject) {
        editGenderPopUp()
    }
    func genderChangeNotif(notification: NSNotification) {
        genderTextField.text = CurrentUser.shareInstance.profileData?.gender
    }
    
    @IBAction func birthEdit(sender: AnyObject) {
        showPopUp()
    }
    func birthChangeNotif(notification: NSNotification) {
        birthTextField.text = CurrentUser.shareInstance.profileData?.age
    }
    
    @IBAction func placeEdit(sender: AnyObject) {
        editPlacePopIp()
    }
    func placeChangeNotif(notifica: NSNotification) {
        placeTextField.text = CurrentUser.shareInstance.profileData?.place
    }
    
    @IBAction func relationEdit(sender: AnyObject) {
        editRelationPopIp()
    }
    func relationChangeNotif(notif: NSNotification) {
        relationTextField.text = CurrentUser.shareInstance.profileData?.relation
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        singleTon()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(EdirProfileTableViewController.genderChangeNotif), name: "gender", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(EdirProfileTableViewController.birthChangeNotif), name: "birth", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(EdirProfileTableViewController.placeChangeNotif(_:)), name: "place", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(EdirProfileTableViewController.relationChangeNotif(_:)), name: "relation", object: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = false
        singleTon()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
    
//  MARK: - textField
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        CurrentUser.shareInstance.profileData?.name = nameTextField.text!
        CurrentUser.shareInstance.profileData?.trait = traitTextField.text!
        print("textField return~~\(textField.text)")
        print("singleTon~~~name\(CurrentUser.shareInstance.profileData?.name)")
        return true
    }
    
//  MARK: - textView
    func textViewDidEndEditing(textView: UITextView) {
        CurrentUser.shareInstance.profileData?.about = aboutMe.text
        tableView.setContentOffset(CGPointMake(0, 0), animated: true)
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        tableView.setContentOffset(CGPointMake(0, 160),animated: true)

    }
    
    

    
//    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//        
//    }
//    
    
    // MARK: - photoPicker set up

    
    
    func photoPicker() {
        let photoPicker = UIImagePickerController()
        photoPicker.delegate = self
        photoPicker.sourceType = .PhotoLibrary
        self.presentViewController(photoPicker, animated: true, completion: nil)
    }

    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
         tempImage = (info[UIImagePickerControllerOriginalImage] as? UIImage)!
        showImage()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func showImage() {
        switch tempImageNumber {
        case 1:
            image1.image = tempImage
        case 2:
            image2.image = tempImage
        case 3:
            image3.image = tempImage
        case 4:
            image4.image = tempImage
        default:
            break
        }
        print(tempImageNumber)
    }

    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }

    
    // MARK: - Pop up edit
    
    func showPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("sbPopUpID") as!
        PopUpViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        
    }
    
    func editGenderPopUp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("sbEditGender") as! EditGenderViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        
    }
    
    func editPlacePopIp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("sbEditPlace") as! EditPlaceViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        
    }
    
    func editRelationPopIp() {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("sbEditRelation") as!
            EditRelationViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMoveToParentViewController(self)
        
    }
    
    
    
    
    func singleTon() {
        nameTextField.text = CurrentUser.shareInstance.profileData?.name
        birthTextField.text = CurrentUser.shareInstance.profileData?.age
        genderTextField.text = CurrentUser.shareInstance.profileData?.gender
        placeTextField.text = CurrentUser.shareInstance.profileData?.place
        relationTextField.text = CurrentUser.shareInstance.profileData?.relation
        traitTextField.text = CurrentUser.shareInstance.profileData?.trait
        aboutMe.text = CurrentUser.shareInstance.profileData?.about
    }
    

}

extension UITableViewController {
    override func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    override func dismissKeyboard() {
        view.endEditing(true)
    }
}