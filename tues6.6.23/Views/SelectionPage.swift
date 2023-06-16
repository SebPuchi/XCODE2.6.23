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
            
            Text("Whattup")
                .foregroundColor(Color.white)
            
            
            
        }.navigationBarBackButtonHidden(true)
        
        
    }
}

struct SelectionPage_Previews: PreviewProvider {
    static var previews: some View {
        
        SelectionPage()
        
    }
}
