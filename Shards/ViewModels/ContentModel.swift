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
        super.init()
        
        // Set content model as the delegate of the location manager
        
        locationManager.delegate = self
        
        // Request permission from the user
        
        locationManager.requestWhenInUseAuthorization()
        
        // Start geolocating the user
        
        locationManager.startUpdatingLocation()
    }
}
