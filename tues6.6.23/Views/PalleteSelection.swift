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
                
                
                
                   
                    Text("Complete    all    three    Daily    Challeges    to    unlock    a    new    Palette   Color  !  10/11/2003")
                    .foregroundColor(Color.white).font(.custom("ArcadeClassic", size: 25)).multilineTextAlignment(.center).padding(.vertical, 100.0)
        
                
                //I want this to eventually be an image with shadows
                Text("Selection")
                    .foregroundColor(Color.white).font(.custom("ArcadeClassic", size: 35)).multilineTextAlignment(.center)
                
                  
          
               
              
                
                GeometryReader { geometry in
                    ScrollView {
                        VStack(alignment: .center,spacing: 15) {
//******************************************************************************************************************************
                            
                            //Red
                                
                                
                                if colorTypes[0].colorNum<=settings.amtColorsUnlocked{
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
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[0].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                            
//******************************************************************************************************************************

                            //Blue
                                
                                
                                if colorTypes[1].colorNum<=settings.amtColorsUnlocked{
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
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[1].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                            
                          
//******************************************************************************************************************************
                        //Yellow
                            
                            
                            if colorTypes[2].colorNum<=settings.amtColorsUnlocked{
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
                            
                            
                            else{
                                
                                Button(action: {}) {
                                    Text(colorTypes[2].displayColor).font(.custom("ArcadeClassic", size: 35))
                                            .padding()
                                            .foregroundColor(Color.gray)
                                            .frame(width:  geometry.size.width)
                                            .background(
                                                Rectangle()
                                                .stroke(Color.gray, lineWidth: 5) // White frame
                                            )
                                        }
                                        .disabled(true)
                                
                                
                                
                            }
                            
  //*************************************************************************************************************************
                          
                            //Purple
                                
                                
                                if colorTypes[3].colorNum<=settings.amtColorsUnlocked{
                                    Button(action: {
                                        //Changes load color setting
                                        settings.selectedColorLoad = colorTypes[3].name
                                        
                                        
                                        // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                        for index in colorTypes.indices {
                                            colorTypes[index].displayColor = colorTypes[index].name
                                        }
                                        
                                        //Changes color name to selected color (visual)
                                        colorTypes[3].displayColor =  colorTypes[3].selectedName
                        

                                }) {
                                    
                                    if settings.selectedColorLoad == colorTypes[3].name {
                                        Text(colorTypes[3].selectedName).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(colorTypes[3].color)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.white, lineWidth: 5) // White frame
                                                )
                                                } else {
                                                    Text(colorTypes[3].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                            .padding()
                                                            .foregroundColor(colorTypes[3].color)
                                                            .frame(width:  geometry.size.width)
                                                            .background(
                                                                Rectangle()
                                                                .stroke(Color.white, lineWidth: 5) // White frame
                                                            )
                                                }
                                    
                                } // Purple end
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[3].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                                
      //*************************************************************************************************************************
                            //Green
                                
                                
                                if colorTypes[4].colorNum<=settings.amtColorsUnlocked{
                                    Button(action: {
                                        //Changes load color setting
                                        settings.selectedColorLoad = colorTypes[4].name
                                        
                                        
                                        // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                        for index in colorTypes.indices {
                                            colorTypes[index].displayColor = colorTypes[index].name
                                        }
                                        
                                        //Changes color name to selected color (visual)
                                        colorTypes[4].displayColor =  colorTypes[4].selectedName
                        

                                }) {
                                    
                                    if settings.selectedColorLoad == colorTypes[4].name {
                                        Text(colorTypes[4].selectedName).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(colorTypes[4].color)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.white, lineWidth: 5) // White frame
                                                )
                                                } else {
                                                    Text(colorTypes[4].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                            .padding()
                                                            .foregroundColor(colorTypes[4].color)
                                                            .frame(width:  geometry.size.width)
                                                            .background(
                                                                Rectangle()
                                                                .stroke(Color.white, lineWidth: 5) // White frame
                                                            )
                                                }
                                    
                                } // green end
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[4].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                                
      //*************************************************************************************************************************
                            //Orange
                                
                                
                                if colorTypes[5].colorNum<=settings.amtColorsUnlocked{
                                    Button(action: {
                                        //Changes load color setting
                                        settings.selectedColorLoad = colorTypes[5].name
                                        
                                        
                                        // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                        for index in colorTypes.indices {
                                            colorTypes[index].displayColor = colorTypes[index].name
                                        }
                                        
                                        //Changes color name to selected color (visual)
                                        colorTypes[5].displayColor =  colorTypes[5].selectedName
                        

                                }) {
                                    
                                    if settings.selectedColorLoad == colorTypes[5].name {
                                        Text(colorTypes[5].selectedName).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(colorTypes[5].color)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.white, lineWidth: 5) // White frame
                                                )
                                                } else {
                                                    Text(colorTypes[5].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                            .padding()
                                                            .foregroundColor(colorTypes[5].color)
                                                            .frame(width:  geometry.size.width)
                                                            .background(
                                                                Rectangle()
                                                                .stroke(Color.white, lineWidth: 5) // White frame
                                                            )
                                                }
                                    
                                } // Orange end
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[5].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                                
      //*************************************************************************************************************************
                            //Pink
                                
                                
                                if colorTypes[6].colorNum<=settings.amtColorsUnlocked{
                                    Button(action: {
                                        //Changes load color setting
                                        settings.selectedColorLoad = colorTypes[6].name
                                        
                                        
                                        // will loop through all objects and change thier displayColor to "unselected" (Normal)
                                        for index in colorTypes.indices {
                                            colorTypes[index].displayColor = colorTypes[index].name
                                        }
                                        
                                        //Changes color name to selected color (visual)
                                        colorTypes[6].displayColor =  colorTypes[6].selectedName
                        

                                }) {
                                    
                                    if settings.selectedColorLoad == colorTypes[6].name {
                                        Text(colorTypes[6].selectedName).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(colorTypes[6].color)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.white, lineWidth: 5) // White frame
                                                )
                                                } else {
                                                    Text(colorTypes[6].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                            .padding()
                                                            .foregroundColor(colorTypes[6].color)
                                                            .frame(width:  geometry.size.width)
                                                            .background(
                                                                Rectangle()
                                                                .stroke(Color.white, lineWidth: 5) // White frame
                                                            )
                                                }
                                    
                                } // Pink end
                                    
                                    
                                    
                                }
                                
                                
                                else{
                                    
                                    Button(action: {}) {
                                        Text(colorTypes[6].displayColor).font(.custom("ArcadeClassic", size: 35))
                                                .padding()
                                                .foregroundColor(Color.gray)
                                                .frame(width:  geometry.size.width)
                                                .background(
                                                    Rectangle()
                                                    .stroke(Color.gray, lineWidth: 5) // White frame
                                                )
                                            }
                                            .disabled(true)
                                    
                                    
                                    
                                }
                                
      //*************************************************************************************************************************
                              

                            
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
