//
//  ContentView.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{

        
        ZStack{
            
            Color(.black).ignoresSafeArea()
            
            
            VStack {
                
                
                
                Spacer()
                
                NavigationLink(destination: SelectionPage()) {
                    
                    
                    Image("BeginRed").resizable().scaledToFit().frame(width: 200.0) 

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
          
                
                
            }
            
     
          
        }
    
 
    
    }
    
    init(){
        
        for familyName in UIFont.familyNames{
            
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName){
                
                print("-- \(fontName)")
                
            }
            
        }
        
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
