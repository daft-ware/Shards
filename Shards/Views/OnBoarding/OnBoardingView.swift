//
//  OnBoardingView.swift
//  Shards
//
//  Created by Rostislav Brož on 11/8/21.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        ZStack {
            gray.ignoresSafeArea()
            
            VStack {
                Text("Hello, fellow cyclist?")
                    .foregroundColor(black)
                    .font(.system(size: screenSize.width / 15))
                    .padding()
                
                Divider()
                
                Text("Probably, we hate shards.\nThat's why I made Shards!\nContradictory, but it works just fine")
                    .foregroundColor(black)
                    .font(.system(size: screenSize.width / 20))
                    .padding()
            }
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
