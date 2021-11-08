//
//  HomeView.swift
//  Shards
//
//  Created by Rostislav Brož on 11/8/21.
//

import SwiftUI

struct HomeView: View {
    
    @State public var showingMapView = false
    //@State public var showingInfoSheet = false
        
    @State public var notification = 0
        
    var body: some View {
        ZStack {
            white.ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {showingMapView.toggle()},
                            label: {
                                ZStack {
                                    Circle()
                                        .fill(gray)
                                        .frame(width: screenSize.width / 10, height: screenSize.width / 10)
                                        
                                        Image(systemName: "questionmark")
                                            .resizable()
                                            .foregroundColor(black)
                                            .frame(width: screenSize.width / 30, height: screenSize.width / 20)
                                        
                            }
                    })
                }.sheet(isPresented: $showingMapView) {
                    MapView()}
                .frame(width: screenSize.width / 1.1, height: screenSize.width / 4)
                    
                Spacer()
                    
                Button(action: {notification = notification + 1;
                        if notification > 5 {
                            showingMapView.toggle();
                            notification = 0
                        }
                        },
                        label: {
                            ZStack {
                                Rectangle()
                                    .fill(red)
                                    .frame(width: screenSize.width / 1.5, height: screenSize.width / 1.5)
                                    .cornerRadius(100)
                            
                                Circle()
                                    .fill(white)
                                    .frame(width: screenSize.width / 2, height: screenSize.width / 2)
                            
                                Text("Shards!")
                                    .font(.system(size: screenSize.width / 10))
                                    .foregroundColor(black)
                        }
                })
                        
                Spacer()
                Spacer()
                    
                Button(action: {showingMapView .toggle(); notification = 0},
                       label: {
                            ZStack {
                                Rectangle()
                                    .fill(gray)
                                    .frame(width: screenSize.width / 1.1, height: screenSize.width / 8)
                                    .cornerRadius(15)
                            
                                Image(systemName: "chevron.up")
                                    .resizable()
                                    .foregroundColor(black)
                                    .frame(width: screenSize.width / 20, height: screenSize.width / 30)
                            
                                if notification > 0 {
                                    HStack {
                                        Spacer()
                                    
                                        VStack {
                                            ZStack {
                                                Circle()
                                                    .fill(lightRed)
                                                    .frame(width: screenSize.width / 15, height: screenSize.width / 15)
                                                    .overlay(Circle()       .stroke(white, lineWidth: 2))
                                            
                                                Text(String(notification))
                                                    .foregroundColor(white)
                                                    .font(.system(size: screenSize.width / 25))
                                            }
                                        
                                            Spacer()
                                        }
                                    }
                                }
                            }
                }).sheet(isPresented: $showingMapView) {
                        MapView()}
                .frame(width: screenSize.width / 1.07, height: screenSize.width / 6)
            }
        }.navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
