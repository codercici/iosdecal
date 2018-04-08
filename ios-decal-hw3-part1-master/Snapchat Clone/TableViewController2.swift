//
//  TableViewController2.swift
//  Snapchat Clone
//
//  Created by CiCi on 3/12/18.
//  Copyright © 2018 org.iosdecal. All rights reserved.
//

import UIKit

class TableViewController2: UITableViewController {
    
    var image:UIImage!
    var index = 0
    var section = 0
    let cellHeight:CGFloat = 400
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return threads["memes"]!.count
        }
        else if section == 1{
            return threads["dog spots"]!.count
        }
        else{
            return threads["random"]!.count
    }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Memes"
        }
        else if section == 1 {
            return "dog spots"
        }
        else{
            return "random"
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "sectioncell", for: indexPath) as? SectionCell{
            cell.senderimage.text = "CiCi Huang"
            cell.readimagee.image = UIImage(named: "unread")
            cell.realimage = image
            return cell
        }else{
            return UITableViewCell()
        }

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        index = indexPath.row
        let cell = self.tableView.cellForRow(at: indexPath) as! SectionCell
        section = indexPath.section
        performSegue(withIdentifier: "ToPreview", sender: index)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ToPreview" {
             {
                if section == 0{
                instance.imageToDisplay = threads["memes"]?[index]
                }
                else if section == 1{
                    instance.imageToDisplay = threads["dog spots"]?[index]
                }
                else{
                    instance.imageToDisplay = threads["random"]?[index]
                }
        }
    

}
}
}

