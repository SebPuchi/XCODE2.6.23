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
                
                
                Text("Whattup")
                    .foregroundColor(Color.white)
                
                
                NavigationLink(destination: ContentView ()) {
                    
                    
                    Text("Return")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                
                
                
            }
            
         
            
            
            
        }.navigationBarBackButtonHidden(true)
        
        
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        
        SelectionPage()
        
    }
}
