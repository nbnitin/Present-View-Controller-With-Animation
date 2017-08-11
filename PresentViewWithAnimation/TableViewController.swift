//
//  TableViewController.swift
//  PresentViewWithAnimation
//
//  Created by Umesh Chauhan on 11/08/17.
//  Copyright © 2017 Nitin Bhatia. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Changin view with animation 
        if(indexPath.row == 0){
            let transition = CATransition()
            transition.duration = 0.5
            transition.type = kCATransitionPush
            transition.subtype = kCATransitionFromRight //from left from bottom and from top also a sub
            self.view.window!.layer.add(transition, forKey: kCATransition)
        } else if(indexPath.row == 1){
            let transition = CATransition()
            transition.duration = 0.5
            transition.type = kCATransitionPush
            transition.subtype = kCATransitionFromLeft //from left from bottom and from top also a sub
            self.view.window!.layer.add(transition, forKey: kCATransition)
        } else if(indexPath.row == 2){
            let transition = CATransition()
            transition.duration = 0.5
            transition.type = kCATransitionFade
            self.view.window!.layer.add(transition, forKey: kCATransition)
        } else if(indexPath.row == 3){
            let transition = CATransition()
            transition.duration = 0.5
            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromRight //from left from bottom and from top also a sub type of it
            self.view.window!.layer.add(transition, forKey: kCATransition)
        } else if(indexPath.row == 4){
                let transition = CATransition()
                transition.duration = 0.5
                transition.type = kCATransitionReveal
                transition.subtype = kCATransitionFromRight //from left from bottom and from top also a sub
                self.view.window!.layer.add(transition, forKey: kCATransition)
        }

        let vc = storyboard?.instantiateViewController(withIdentifier: "VC1")
        self.present(vc!, animated: false, completion: nil)
    }
}
