//
//  CounterdowntimerViewController.swift
//  project
//
//  Created by JOHN YU on 13/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit

class CounterdowntimerViewController: UIViewController {

    
    var seconds = 150
    var timer = Timer()
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slide: UISlider!
    
    
    @IBAction func slid(_ sender: UISlider) {
        seconds = Int(sender.value)
        label.text = String(seconds) + " seconds"
        
    }
    @IBOutlet weak var startOutlet: UIButton!
    
    @IBAction func start(_ sender: AnyObject)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(CounterdowntimerViewController.counter), userInfo: nil, repeats: true)
        
        slide.isHidden = true
        startOutlet.isHidden = true
        
        
    
    }
    
    func counter(){
    seconds -= 1
    label.text = String(seconds) + " seconds"
    
        if (seconds == 0)
        {
        timer.invalidate()
        slide.isHidden = false
        startOutlet.isHidden = false
        }
 
    }
    
    @IBOutlet weak var stopbutton: UIButton!
    
    
    @IBAction func stopfuc(_ sender: Any) {
        
        timer.invalidate()
        seconds = 150
        slide.setValue(150, animated: true)
        label.text = "150 seconds"
        
        slide.isHidden = false
        startOutlet.isHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
