//
//  SelectionPage.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/16/23.
//

import SwiftUI

struct SelectionPage: View {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        
        
            
        ZStack{
            
          Color(.black).ignoresSafeArea()
            
            
            VStack{
                Spacer()
                
                
                NavigationLink(destination: FourxFour()) {
                    
                    
                    Text("4x4").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                NavigationLink(destination: FivexFive()) {
                    
                    
                    Text("5x5").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                NavigationLink(destination: SixxSix()) {
                    
                    
                    Text("6x6").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                
                
              
                
                
                
                
            }
            
         
            
            
            
        }.onAppear {
            // Perform the desired action here
            if settings.fourWonToday && settings.fiveWonToday && settings.sixWonToday && settings.amtColorsUnlocked<=7 {
                
                
                
                settings.amtColorsUnlocked += 1
                
                settings.fourWonToday = false
                settings.fiveWonToday = false
                settings.sixWonToday = false
                
                // this is where we'd congradulate the user for unlocking new color.
                // Must also make the buttons to submitt Cross unusable after.
            }
          
        }
        
        
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        
        SelectionPage()
        
    }
}
