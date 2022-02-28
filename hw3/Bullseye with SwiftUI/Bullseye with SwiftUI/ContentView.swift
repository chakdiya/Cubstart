//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    // Initialize slider
    @State var sliderValue: Double = 0
    @State var toggle = false
    
    var body: some View {
        
        // Start high score... current level
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding([.top, .leading], 20)
                .font(.system(size: 20))

                
                Spacer()
                
                VStack() {
                    Text("Current Level")
                    Text("1")
                }
                .padding([.top, .trailing], 20)
                .font(.system(size: 20))
            }
            
            Spacer()
            
            // ORIGINAL CODE STARTS HERE
            
            // Middle Content
            VStack() {
                Text("Move the slider to:")
                    .font(.system(size: 30))
                Text("25")
                    .font(.system(size: 30))
                Slider(value: $sliderValue, in: 0...100)
                    .padding()
                Button(action: {
                    print("")
                }) {
                    Text("Check")
                        .font(.system(size: 20))
                }
            }
            
            Spacer()
            
            // Bottom Content
            VStack() {
                Text("Exact Mode?")
                    .font(.system(size: 20))
                Toggle("HIDE TEXT", isOn: $toggle)
                    .labelsHidden()
            }
            .padding()
            
        }
    }
}

// SwiftUI’s way of showing the UI as we code without running it on a simulator.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
