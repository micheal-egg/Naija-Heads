//
//  SlangView.swift
//  NaijaHeads
//
//

import SwiftUI

struct SlangView: View {
    var body: some View {
        ZStack {
            AppBackground()

            VStack {
                Text("Naija Slang Deck 🇳🇬")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)

                Text("This is the Slang page.")
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding()
        }
        .navigationTitle("Naija Slang")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SlangView()
}
