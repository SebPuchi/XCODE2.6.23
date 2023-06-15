//
//  ContentView.swift
//  tues6.6.23
//
//  Created by Sebastian Pucher on 6/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
