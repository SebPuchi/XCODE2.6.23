//
//  PalleteSelection.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/17/23.
//

import SwiftUI

struct PalleteSelection: View {
    
    
    @EnvironmentObject var settings: UserSettings
    
    let buttonColors = ["Red", "Blue", "Yellow", "Purple", "Green", "Orange", "Pink"]
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            
            VStack{
                Spacer()
                
                
                
                   
                    Text("Complete    all    three    Daily    Challeges    to    unlock    a    new    Palette   Color  !")
                    .foregroundColor(Color.white).font(.custom("ArcadeClassic", size: 25)).multilineTextAlignment(.center).padding(.vertical, 100.0)
        
                
                //I want this to eventually be an image with shadows
                Text("Selection")
                .foregroundColor(Color.white).font(.custom("ArcadeClassic", size: 35)).multilineTextAlignment(.center)
                
                  
          
               
              
                
                GeometryReader { geometry in
                    ScrollView {
                        VStack(alignment: .center) {
                            ForEach(buttonColors, id: \.self) { title in
                                Button(action: {
                                    
                                    settings.selectedColorLoad = title

    
                                    
                                    
                                    
                                }) {
                                    Text(title).font(.custom("ArcadeClassic", size: 35))
                                        .padding()
                                        .foregroundColor(Color.fromString(title))
                                    
                                        .frame(width:  geometry.size.width)
                                        .background(
                                            Rectangle()
                                                .stroke(Color.white, lineWidth: 5) // White frame
                                        )
                                }
                                .padding(.vertical, 5)
                            }
                            
                        }
                    }
                }
                
                
            }
            
            
            
            
            
            
        }
        
    }
    
}



struct PalleteSelection_Previews: PreviewProvider {
    static var previews: some View {
        PalleteSelection()
.environmentObject(UserSettings())
    }
}
