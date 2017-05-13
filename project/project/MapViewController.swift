//
//  MapViewController.swift
//  project
//
//  Created by JOHN YU on 13/05/2017.
//  Copyright © 2017 JOHN YU. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController,CLLocationManagerDelegate {
    
    @IBOutlet weak var map: MKMapView!
    let manager = CLLocationManager()

    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longtitude: UILabel!

    @IBOutlet weak var speed: UILabel!
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude,location.coordinate.longitude)
        
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        map.setRegion(region, animated: true)
        
        self.map.showsUserLocation = true
        
        print(location.altitude)
        
        
        print(location.speed)
        
        let speeddata = Int(location.speed)
        let latitudedata = Int(location.coordinate.latitude)
        let longtitudedata = Int(location.coordinate.longitude)
        

     
        speed.text = "Speed " + String(speeddata)
        latitude.text = "Latitude" + String(latitudedata)
        longtitude.text = "Longtitude" + String(longtitudedata)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    
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
