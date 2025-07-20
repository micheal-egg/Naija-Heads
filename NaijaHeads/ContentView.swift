//
//  ContentView.swift
//  NaijaHeads
//
//  Created by Emex on 07/15/25.
//

import SwiftUI

struct CardView: View {
    let title: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 8)

            Text(title)
                .font(.title2.bold())
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(width: 165, height: 300)
    }
}

struct ContentView: View {
    var body: some View {
        
        //Manages Screen History
        //Automatically implements back button if all are met
        //Allows NavigationLink to work
        NavigationStack {
            ZStack {
                AppBackground()

                VStack {
                    Text("Wetin")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)

                    HStack(spacing: 16) {
                        // Title at the top of the bar
                        // Afrobeats card → Afrobeats page
                        //Navigation Link turns it into tappable UI Element, like Hyperlink in HTML
                        NavigationLink(destination: AfrobeatsView()) {
                            CardView(title: "Afrobeats")
                        }
                        .buttonStyle(.plain)

                        // Slang card → Slang page
                        NavigationLink(destination: SlangView()) {
                            CardView(title: "Naija Slang")
                        }
                        .buttonStyle(.plain)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 16)
                    
                    //Shift Content upwards
                    Spacer()

                    Button("Play") {
                        // Later: start game flow
                    }
                    .font(.title2.bold())
                    .padding()
                    .frame(maxWidth: 200)
                    .background(Color(red: 1.0, green: 0.825, blue: 0.298))
                    .foregroundColor(.black)
                    .cornerRadius(16)
                    .shadow(radius: 4)

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
