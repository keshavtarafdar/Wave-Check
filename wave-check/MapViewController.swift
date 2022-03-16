//
//  SettingsViewController.swift
//  wave-check
//
//  Created by Keshav Tarafdar on 1/23/22.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet var mapView: MKMapView!
    let manager = CLLocationManager()
    
    @IBAction func button_clicked(_ sender: Any) {
        retrieveCurrentLocation()
    }
    
    func retrieveCurrentLocation() {
        
        switch manager.authorizationStatus {
        case .restricted, .denied:
            manager.requestWhenInUseAuthorization()
        default:
            return
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.requestWhenInUseAuthorization()

        if CLLocationManager.locationServicesEnabled() {
            manager.delegate = self
            manager.desiredAccuracy = kCLLocationAccuracyBest
            manager.startUpdatingLocation()
        }
        mapView.showsUserLocation = true
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
