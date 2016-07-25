//
//  SetQuestionViewController.swift
//  FBLoginAndShowImage
//
//  Created by KurtHo on 2016/7/25.
//  Copyright © 2016年 Kurt. All rights reserved.
//

import UIKit

class SetQuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func segmentAction(sender: AnyObject) {
        segmentSelect()
        tableView.reloadData()
    }
    
    
    let cellValue = ["我最吸引人的地方是","我喜歡與什麼樣的人相處"]
    let collectionValue = [""]
    var segmentNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segmentSelect() {
        switch mySegment.selectedSegmentIndex {
        case 0:

            break
        case 1:
            tableView.hidden = true

            break
        default:
            break
        }
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellValue.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        cell.textLabel?.text = cellValue[indexPath.row]
        return cell
    }
    

    
    
    
}
