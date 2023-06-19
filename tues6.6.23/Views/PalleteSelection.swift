//
//  PalleteSelection.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/17/23.
//

import SwiftUI

struct PalleteSelection: View {
    
    @EnvironmentObject var colorSelect: ColorSelect
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea()
            
            VStack{
                Spacer()
                
                HStack{
                   
                    Text("Complete    all    three    Daily    Challeges    to    unlock    a    new    Palette   Color  !")
                        .foregroundColor(Color.white).font(.custom("ArcadeClassic", size: 25)).multilineTextAlignment(.center)
                  
                }
                Button(action: {
                    
                    colorSelect.setColor(newChoice:"Blue")
                            }) {
                                Text("Change Color to Blue")
                                    .padding()
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                            }
                Spacer()
                
                Button(action: {
                    
                    colorSelect.setColor(newChoice:"Red")
                            }) {
                                Text("Change Color back to Red")
                                    .padding()
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .background(Color.red)
                                    .cornerRadius(10)
                            }
                Spacer()
                
                
            }
            
            
            
            
            
            
        }
        
    }
    
}



struct PalleteSelection_Previews: PreviewProvider {
    static var previews: some View {
        PalleteSelection() .environmentObject(ColorSelect())
    }
}
