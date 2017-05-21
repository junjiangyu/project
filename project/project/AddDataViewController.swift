//
//  AddDataViewController.swift
//  project
//
//  Created by JOHN YU on 17/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit

class AddDataViewController: UIViewController {
//define the variable inside
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var question: UITextView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //core data function which get data to the context

    @IBAction func addData(_ sender: AnyObject) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context:context)
        task.namedata = name.text!
        task.addressdata = address.text!
        task.phonedata = phone.text!
        task.questiondata = question.text!
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        
    }

    


}
