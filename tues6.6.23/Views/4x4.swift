//
//  4x4.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/20/23.
//

import SwiftUI

struct _x4: View {
    
    @EnvironmentObject var settings: UserSettings
    
    
    var body: some View {
        
        Text("4x4").font(.custom("ArcadeClassic", size: 20))
        
        
        
        Button(action: {
            // Perform your action here
            settings.amtColorsUnlocked+=1
            
            print(" "+String(settings.amtColorsUnlocked))
      
        }) {
            Text("add")
        }
        
        
        Button(action: {
            // Perform your action here
            settings.resetUserDefaults()
        }) {
            Text("reset")
        }
        
    }
}

struct _x4_Previews: PreviewProvider {
    static var previews: some View {
        _x4().environmentObject(UserSettings())
    }
}
