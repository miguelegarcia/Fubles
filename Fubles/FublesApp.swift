//
//  FublesApp.swift
//  Fubles
//
//  Created by Miguel Garcia on 11/16/22.
//

import SwiftUI

@main
struct FublesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Matches", systemImage: "sportscourt.fill")
                    }
                MapView()
                    .tabItem {
                        Label("Map", systemImage: "map.fill")
                    }
                
            }
            .preferredColorScheme(.dark)
        }
    }
}
