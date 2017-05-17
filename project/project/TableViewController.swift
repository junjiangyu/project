//
//  TableViewController.swift
//  project
//
//  Created by JOHN YU on 17/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    var tasks : [Task] = []

    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //get the data from core data
        getData()
        
        //reload table view
        tableview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let task = tasks[indexPath.row]
        cell.textLabel?.textAlignment = .left
        cell.textLabel?.text = "Name:  "+"\(task.namedata!)"+"\nAddress:  "+"\(task.addressdata!)"+"\nPhone:  "+"\(task.phonedata!)"+"\nQuestion:  "+"\(task.questiondata!)"

        cell.textLabel?.numberOfLines = 5
        
        
        
        return cell
    
    }
   
    
    func getData(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            tasks = try context.fetch(Task.fetchRequest())
            
        }
        catch{
            print("failed")
    
        }
    }
}

