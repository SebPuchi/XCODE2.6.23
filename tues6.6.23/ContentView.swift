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
                
                Text("A Game By \nSebastian  Pucher").font(.custom("ArcadeClassic", size: 25)).foregroundColor(Color.red).multilineTextAlignment(.center)
                
                
                
                
                NavigationLink(destination: SelectionPage()) {
                    
                    
                    Text("Go to Second View")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
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
