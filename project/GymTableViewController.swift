//
//  GymTableViewController.swift
//  Fitness For Life
//
//  Created by Junjiangyu on 2017/5/20.
//  Copyright © 2017年 JOHN YU. All rights reserved.
//

import UIKit

class GymTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    @IBAction func Gymone(_ sender: Any) {
        UIApplication.shared.open(NSURL(string:"http://www.deakinburwood.ymca.org.au/") as! URL, options: [:], completionHandler: nil)
    }
    

    @IBAction func gymtwo(_ sender: Any) {
           UIApplication.shared.open(NSURL(string:"http://www.trainingdayhc.com.au/") as! URL, options: [:], completionHandler: nil)
    }


    @IBAction func gymthree(_ sender: Any) {
           UIApplication.shared.open(NSURL(string:"https://www.anytimefitness.com.au/gyms/AU-1305/burwood-vic-3125Crd/") as! URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func gymfour(_ sender: Any) {
              UIApplication.shared.open(NSURL(string:"http://www.aqualink.com.au") as! URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func gymfive(_ sender: Any) {
             UIApplication.shared.open(NSURL(string:"http://curves.com.au") as! URL, options: [:], completionHandler: nil)
    }
    

}
  
