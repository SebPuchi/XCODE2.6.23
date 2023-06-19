//
//  tues6_6_23App.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI

@main
struct tues6_6_23App: App {
    @StateObject private var colorSelect = ColorSelect()
    
  
    var body: some Scene {
        WindowGroup {
            HomeScreen().environmentObject(colorSelect)
           
        }
        
    }
}
