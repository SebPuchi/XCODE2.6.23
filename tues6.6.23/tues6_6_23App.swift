//
//  tues6_6_23App.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI
import Schedule

@main
struct tues6_6_23App: App {
    
    
    @StateObject private var settings = UserSettings()
    
    let t1 = Plan.every(1.second).do {
        
        print("wow this works ")
    }
    
  
    var body: some Scene {
        WindowGroup {
            HomeScreen().environmentObject(settings)
           
        }
        
    }
}
