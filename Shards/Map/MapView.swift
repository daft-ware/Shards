//
//  MapView.swift
//  Shards
//
//  Created by Rostislav Brož on 11/10/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    @EnvironmentObject var model: ContentModel
    /*
    var location: [MKAnnotation] {
        
        var annotaitons = [MKAnnotation]()
        
    }
    */
    func makeUIView(context: Context) -> MKMapView {
        
        let mapView = MKMapView()
        
        
        // Make the user show on the map
        
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        uiView.removeAnnotations(uiView.annotations)
        
        //uiView.addAnnotations()
        
        
        
    }
    
    static func dismantleUIView(_ uiView: MKMapView, coordinator: ()) {
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
