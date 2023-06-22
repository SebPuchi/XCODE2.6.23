//
//  SixxSix.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/21/23.
//

import SwiftUI

struct SixxSix: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        
        Button(action: {
            settings.sixWonToday =  true
                   
               }) {
                   Text("add")
                       .font(.title)
                       .foregroundColor(.white)
                       .padding()
                       .background(Color.blue)
                       .cornerRadius(10)
               }
    }
}

struct SixxSix_Previews: PreviewProvider {
    static var previews: some View {
        SixxSix()
    }
}
