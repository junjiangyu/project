//
//  timerViewController.swift
//  project
//
//  Created by JOHN YU on 13/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var time = 0
    
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func start(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerViewController.action), userInfo: nil, repeats: true)
    
    }
    
    @IBAction func pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stop(_ sender: AnyObject) {
    }
    
    
    func action()
     { time += 1
       label.text = String(time)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
