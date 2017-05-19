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


class MapViewController: UIViewController,CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var map: MKMapView!
    let manager = CLLocationManager()



    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        self.map.delegate = self
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.03, 0.03)
        let mylocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.847228, 145.114945)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(mylocation, span)
        map.setRegion(region,animated: true)
        
        
       let gymonelocationone:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.845623, 145.114013)
        
       let gymonelocationtwo:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.854229, 145.108743)
       
        let gymonelocationthree:CLLocationCoordinate2D = CLLocationCoordinate2DMake(-37.849624, 145.099915)

 
    
        
        
        
        let annotations = MKPointAnnotation()
        annotations.coordinate = mylocation
        annotations.title = "Deakin"
        annotations.subtitle = "I'm Here"
        map.addAnnotation(annotations)
    
        
        let annotationone = MKPointAnnotation()
        annotationone.coordinate = gymonelocationone
        annotationone.title = "Burwood fitness center"
        annotationone.subtitle = "221 Burwood Hwy, Burwood VIC 3125"
        map.addAnnotation(annotationone)
    
        let annotationtwo = MKPointAnnotation()
        annotationtwo.coordinate = gymonelocationtwo
        annotationtwo.title = "Traning Day Gym Burwood"
        annotationtwo.subtitle = "118 Highbury Rd, Burwood VIC 3125"
        map.addAnnotation(annotationtwo)
        
        let annotationthree = MKPointAnnotation()
        annotationthree.coordinate = gymonelocationthree
        annotationthree.title = "Anytime Fitness Burwood"
        annotationthree.subtitle = "85 Burwood Hwy, Burwood VIC 3125"
        map.addAnnotation(annotationthree)
        
     
    
    }

    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "Capital"
        if annotation is MapViewController {
            if let annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) {
                annotationView.annotation = annotation
                return annotationView
            } else {
                let annotationView = MKPinAnnotationView(annotation:annotation, reuseIdentifier:identifier)
                annotationView.isEnabled = true
                annotationView.canShowCallout = true
                let btn = UIButton(type: .detailDisclosure)
                annotationView.rightCalloutAccessoryView = btn
                return annotationView
            }
        }
        
        return nil
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
