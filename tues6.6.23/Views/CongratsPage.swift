//
//  CongratsPage.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/23/23.
//

import SwiftUI

struct CongratsPage: View {
    var body: some View {
        
        VStack{
            Text("Congrats Yo").font(.custom("ArcadeClassic", size: 50))
            
            Spacer()
            
            NavigationLink(destination: SelectionPage()) {
                
                Text("Return").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.black)
                
                
            }
        }
    }
}

struct CongratsPage_Previews: PreviewProvider {
    static var previews: some View {
        CongratsPage().environmentObject(UserSettings())
    }
}
