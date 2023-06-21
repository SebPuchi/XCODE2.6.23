//
//  PalleteSelection.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/17/23.
//

import SwiftUI

struct PalleteSelection: View {
    
    
    @EnvironmentObject var settings: UserSettings
    
    
    
    
    @State private var colorTypes: [ColorModel] = [
           ColorModel(name: "Red", color: .red, selectedName: "| |              Red              | |", colorNum: 0, displayColor: "Red"),
           ColorModel(name: "Blue", color: .blue, selectedName: "| |              Blue              | |", colorNum: 1, displayColor: "Blue"),
           ColorModel(name: "Yellow", color: .yellow, selectedName: "| |              Yellow              | |", colorNum: 2, displayColor: "Yellow"),
           ColorModel(name: "Purple", color: .purple, selectedName: "| |              Purple              | |", colorNum: 3, displayColor: "Purple"),
           ColorModel(name: "Green", color: .green, selectedName: "| |              Green              | |", colorNum: 4, displayColor: "Green"),
           ColorModel(name: "Orange", color: .orange, selectedName: "| |              Orange              | |", colorNum: 5, displayColor: "Orange"),
           ColorModel(name: "Pink", color: .pink, selectedName: "| |              Pink              | |", colorNum: 6, displayColor: "Pink"),
       ]
    

    
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
                        
                            
                        //Red
                        Button(action: {
                            //Changes load color setting
                            settings.selectedColorLoad = colorTypes[0].name
                            
                            
                            // will loop through all objects and change thier displayColor to "unselected" (Normal)
                            for index in colorTypes.indices {
                                colorTypes[index].displayColor = colorTypes[index].name
                            }
                            
                            //Changes color name to selected color (visual)
                            colorTypes[0].displayColor =  colorTypes[0].selectedName
            

                    }) {
                        
                        if settings.selectedColorLoad == colorTypes[0].name {
                            Text(colorTypes[0].selectedName).font(.custom("ArcadeClassic", size: 35))
                                    .padding()
                                    .foregroundColor(colorTypes[0].color)
                                    .frame(width:  geometry.size.width)
                                    .background(
                                        Rectangle()
                                        .stroke(Color.white, lineWidth: 5) // White frame
                                    )
                                    } else {
                                        Text(colorTypes[0].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(colorTypes[0].color)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.white, lineWidth: 5) // White frame
                                                )
                                    }
                        
                    } // Red end
                   
                            //Blue
                            Button(action: {
                                //Changes load color setting
                                settings.selectedColorLoad = colorTypes[1].name
                                
                                
                                // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                for index in colorTypes.indices {
                                    colorTypes[index].displayColor = colorTypes[index].name
                                }
                                
                                //Changes color name to selected color (visual)
                                colorTypes[1].displayColor =  colorTypes[1].selectedName
                

                        }) {
                            
                            if settings.selectedColorLoad == colorTypes[1].name {
                                Text(colorTypes[1].selectedName).font(.custom("ArcadeClassic", size: 35))
                                        .padding()
                                        .foregroundColor(colorTypes[1].color)
                                        .frame(width:  geometry.size.width)
                                        .background(
                                            Rectangle()
                                            .stroke(Color.white, lineWidth: 5) // White frame
                                        )
                                        } else {
                                            Text(colorTypes[1].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                    .padding()
                                                    .foregroundColor(colorTypes[1].color)
                                                    .frame(width:  geometry.size.width)
                                                    .background(
                                                        Rectangle()
                                                        .stroke(Color.white, lineWidth: 5) // White frame
                                                    )
                                        }
                            
                        } // Blue end
                            
                            //Yellow
                            Button(action: {
                                //Changes load color setting
                                settings.selectedColorLoad = colorTypes[2].name
                                
                                
                                // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                for index in colorTypes.indices {
                                    colorTypes[index].displayColor = colorTypes[index].name
                                }
                                
                                //Changes color name to selected color (visual)
                                colorTypes[2].displayColor =  colorTypes[2].selectedName
                

                        }) {
                            
                            if settings.selectedColorLoad == colorTypes[2].name {
                                Text(colorTypes[2].selectedName).font(.custom("ArcadeClassic", size: 35))
                                        .padding()
                                        .foregroundColor(colorTypes[2].color)
                                        .frame(width:  geometry.size.width)
                                        .background(
                                            Rectangle()
                                            .stroke(Color.white, lineWidth: 5) // White frame
                                        )
                                        } else {
                                            Text(colorTypes[2].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                    .padding()
                                                    .foregroundColor(colorTypes[2].color)
                                                    .frame(width:  geometry.size.width)
                                                    .background(
                                                        Rectangle()
                                                        .stroke(Color.white, lineWidth: 5) // White frame
                                                    )
                                        }
                            
                        } // Yellow end
                        
                            
                            
                               
                            
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
