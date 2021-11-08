//
//  ContentModel.swift
//  Shards
//
//  Created by Rostislav Brož on 11/8/21.
//

import Foundation
import CoreLocation

class ContentModel: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    var locationManager = CLLocationManager()
    
    override init() {
        
        // init method of NSObject
        
        super.init()
        
        
        // Set content model as the delegate of the location manager
        
        locationManager.delegate = self
        
        
        // Request permission from the user
        
        locationManager.requestWhenInUseAuthorization()
    }
    
    // Location manager delegate methods
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        if locationManager.authorizationStatus == .authorizedAlways || locationManager.authorizationStatus == .authorizedWhenInUse {
            
            // Permission granted, all good ->
            // Start geolocating the user
            
            locationManager.startUpdatingLocation()
        }
        
        else if locationManager.authorizationStatus == .denied {
            
            // We need permission in order for the app to work as intended
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Gives us the location of the user
        
        print(locations.first ?? "no location")
        
        // Stop requesting the location after we get it once
        
    }
}
