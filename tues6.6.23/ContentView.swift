//
//  ContentView.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
        
        ZStack{
            Color.gray.ignoresSafeArea()
            
           
            
            VStack {
                
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Spacer()
                Button("Push Me") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Text("Sebastian Pucher").font(.custom("ArcadeClassic", size: 20))}
              

               
            }
        }
        
        
        
        
 
       
        .padding()
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
