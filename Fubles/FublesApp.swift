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
                        Label("Matches", systemImage: "list.dash")
                    }
                ContentView()
                    .tabItem {
                        Label("Map", systemImage: "list.dash")
                    }
                
            }
            .preferredColorScheme(.dark)
        }
    }
}
