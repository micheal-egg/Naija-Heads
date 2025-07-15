//
//  ContentView.swift
//  NaijaHeads
//
//  Created by Emex on 07/15/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .cornerRadius(20)
            .frame(width: 165, height: 300)
            .shadow(radius: 8)
    }
}
struct ContentView: View {
    var body: some View {
        
        // ZStack = layers on top of each other
        // Background at the bottom, then all screen content on top
        ZStack {
            
            // Global green gradient background component
            AppBackground()
            
            // VStack = Vertical layout (top → bottom)
            VStack {
                
                // App Title
                Text("Wetin")
                    .font(.largeTitle.bold())       // Big bold text
                    .foregroundColor(.white)        // White text for contrast
                
                HStack(spacing: 16) {
                    CardView()
                    CardView()
                    CardView()
                }

                // Optional: make sure the HStack uses available width
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 16) // space between title and cards
                
                
                Spacer()   // Pushes button downward
                
                // Play Button (currently placeholder action)
                Button(action: {
                    // TODO: Navigate to category screen later
                }) {
                    Text("Play")
                        .font(.title2.bold())       // Button text styling
                        .padding()                  // Extra touch area
                        .frame(maxWidth: 200)       // Standard button width
                        .background(
                            Color(red: 1.0, green: 0.825, blue: 0.298)  // Accent yellow
                        )
                        .foregroundColor(.black)    // Text color
                        .cornerRadius(16)           // Rounded button corners
                        .shadow(radius: 4)          // Light shadow for depth
                }
                
                Spacer()   // Pushes button upward to center
            }
            .padding()   // Outer padding so nothing touches screen edges
        }
    }
}

#Preview {     // SwiftUI Preview for live UI updates
    ContentView()
}
