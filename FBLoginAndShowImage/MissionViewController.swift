//
//  MissionViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/28.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class MissionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var missionImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    @IBAction func backWard(sender: AnyObject) {
    }
    
    @IBAction func forWard(sender: AnyObject) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabBarController?.tabBar.items?[2].badgeValue = nil

        missionImage.clipsToBounds = true
        missionImage.layer.cornerRadius = missionImage.frame.size.width / 2
        
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        showAlert()
        
        

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Mission.missionList.count

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! MissionTableViewCell
        
        
        return cell
    }
    
    
    
    

}
