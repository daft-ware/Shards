//
//  LaunchView.swift
//  Shards
//
//  Created by Rostislav Brož on 11/8/21.
//

import SwiftUI

let screenSize: CGRect = UIScreen.main.bounds


// Colors

public var white = Color(red: 1, green: 1, blue: 1)
public var gray = Color(red: 0.9, green: 0.9, blue: 0.9)
public var red = Color(red: 1, green: 0, blue: 0)
public var lightRed = Color(red: 1, green: 0, blue: 0)
public var black = Color(red: 0.04, green: 0, blue: 0)


struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if model.authorizationState == .notDetermined {
            
            // Not determined -> onboarding
            
        }
        
        else if model.authorizationState == .authorizedWhenInUse || model.authorizationState == .authorizedAlways {
            
            HomeView()
            
        }
        
        else {
            
            
            
        }
        
        ZStack {
            white.ignoresSafeArea()
                    
            Text("Done")
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
