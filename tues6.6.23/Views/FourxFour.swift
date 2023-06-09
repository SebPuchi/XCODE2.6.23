//
//  FourxFour.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/21/23.
//

import SwiftUI


struct FourxFour: View {
    
    
    @EnvironmentObject var settings: UserSettings
    
    
    var body: some View {
        
        
        Button(action: {
            settings.fourWonToday =  true
                   
               }) {
                   Text("add")
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.blue)
                       .cornerRadius(10)
               }
        Spacer()
        Button(action: {
            settings.resetUserDefaults()
                   
               }) {
                   Text("reset")
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.blue)
                       .cornerRadius(10)
               }
    }
}

struct FourxFour_Previews: PreviewProvider {
    static var previews: some View {
        FourxFour()
    }
}
