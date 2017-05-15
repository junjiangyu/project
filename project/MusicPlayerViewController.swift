//
//  MusicPlayerViewController.swift
//  project
//
//  Created by JOHN YU on 15/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit
import AVFoundation

class MusicPlayerViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    
    var soundPlayer: AVAudioPlayer?
    var elapsedTime: TimeInterval = 0


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        songs.dataSource = self
        songs.delegate = self
        let path =
            Bundle.main.path(forResource: "love yourself", ofType: "mp3")
        let url = URL(fileURLWithPath: path!)
        
        do{ try soundPlayer = AVAudioPlayer(contentsOf:url)
        }
            
        catch{print("file not found")
        }
        
        images.image = UIImage (named:("love yourself"+".jpg"))

    }
    @IBOutlet weak var songs: UIPickerView!
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = items[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Pricedown", size: 26.0)!,NSForegroundColorAttributeName:UIColor.black])
        pickerLabel.attributedText = myTitle
        return pickerLabel
    }
    

    
    
    @IBOutlet weak var images: UIImageView!
    var items = ["love yourself", "With you", "Summer","you come too","Before i sleep"]
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    public func pickerView(_ pickerView: UIPickerView,
                           numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    
    public func pickerView(_ pickerView: UIPickerView,
                           titleForRow row: Int,
                           forComponent component: Int) -> String? {
        return items[row]
    }
    
    
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let path = Bundle.main.path(forResource: items[row], ofType:"mp3")
        let url = URL(fileURLWithPath: path!)
        
        do{ try soundPlayer = AVAudioPlayer(contentsOf:url)
        }
            
        catch{print("file not found")
            
        }
        images.image = UIImage (named:(items[row]+".jpg"))
    
    
    }
    
    @IBAction func play(_ sender: UIButton) {
        if soundPlayer != nil {
            soundPlayer!.currentTime = elapsedTime
            soundPlayer!.play()
        }
    }
    
    @IBAction func pause(_ sender: Any) {
        if soundPlayer != nil {
            elapsedTime = soundPlayer!.currentTime
            soundPlayer!.pause()
        }
        
    }
    
    
    @IBAction func stop(_ sender: Any) {
        if soundPlayer != nil {
            soundPlayer!.stop()
            elapsedTime=0
        }
    }


    @IBAction func stopp(_ sender: Any) {
        if soundPlayer != nil {
            soundPlayer!.stop()
            elapsedTime=0
        }
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

    




