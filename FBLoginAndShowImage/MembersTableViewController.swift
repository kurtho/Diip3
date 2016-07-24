//
//  MembersTableViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/20.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class MembersTableViewController: UITableViewController {
    var members = MembersClass?()
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ProfileImageList.pic.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MembersTableViewCell
        cell.memberImage.image = UIImage(named: ProfileImageList.pic[indexPath.row].name)
        cell.memberName.text = ProfileImageList.pic[indexPath.row].description
        

        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard?.instantiateViewControllerWithIdentifier("")
//        vc.propic = ProfileImageList.pic[indexPath.row].name
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "memberData" {


            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! MemberInfoTableViewController
                destinationController.profileImageLists = ProfileImageList.pic[indexPath.row]
            }
    }
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
 

}


class MembersClass {
    var name: String = ""
    var photoLink: String = ""
    var trait: String = ""
}