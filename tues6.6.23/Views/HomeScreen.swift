//
//  ContentView.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI

struct HomeScreen: View {
    
    
    @EnvironmentObject var settings: UserSettings
    
    
    
    
    var body: some View {
        

        NavigationView{

        
        ZStack{
            
            Color(.black).ignoresSafeArea()
            
            
            VStack {
                
                
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
             
                
                NavigationLink(destination: SelectionPage()) {
                   
                    
                    Image("Begin"+settings.selectedColorLoad).resizable().scaledToFit().frame(width: 250.0
                    )

                }.padding(.bottom, 20.0)
                
                NavigationLink(destination: PalleteSelection()) {
                    
                    
                    Image("Palette"+settings.selectedColorLoad).resizable().scaledToFit().frame(width: 315.0)
                    

                }
                
                
    
                
                
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Sebastian  Pucher").font(.custom("ArcadeClassic", size: 25)).foregroundColor(Color.red).multilineTextAlignment(.center)
                    
                    Spacer()
                    
                }
                

                
                
                
            }
          
                
                
        }.onAppear{print(settings.fourWonToday)}
            
     
          
        }
    
 
    
    }
    
 
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(UserSettings())
    }
}
