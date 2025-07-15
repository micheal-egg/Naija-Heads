//
//  Background.swift
//  NaijaHeads
//


import SwiftUI

struct AppBackground: View {
    var body: some View {
        LinearGradient(
            colors: [ //Using RGB Since Swift doesnt use HEX
                Color(red: 0.039, green: 0.627, blue: 0.431),  // Primary Green
                Color(red: 0.011, green: 0.408, blue: 0.263)   // Dark Green
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}


