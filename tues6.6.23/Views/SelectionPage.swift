//
//  SelectionPage.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/16/23.
//

import SwiftUI

struct SelectionPage: View {
    

    
    var body: some View {
        
        
            
        ZStack{
            
          Color(.black).ignoresSafeArea()
            
            
            VStack{
                Spacer()
                
                
                NavigationLink(destination: _x4()) {
                    
                    
                    Text("4x4").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                NavigationLink(destination: _x5()) {
                    
                    
                    Text("5x5").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                NavigationLink(destination: _x6()) {
                    
                    
                    Text("6x6").font(.custom("ArcadeClassic", size: 50)).foregroundColor(Color.white)
                

                }
                Spacer()
                
                
              
                
                
                
                
            }
            
         
            
            
            
        }
        
        
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        
        SelectionPage()
        
    }
}
