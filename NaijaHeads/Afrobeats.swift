//
//  Afrobeats.swift
//  NaijaHeads
//
//

import SwiftUI

struct AfrobeatsView : View {
    var body: some View {
        
        NavigationStack{
            ZStack {
                AppBackground() //From the AppBackground View I made
                
                VStack {
                    
                    Text ("Afrobeats")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .frame(width: 200, height: 300)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                    
                    Text ("Davido to Wizkid, act out the latests music giants in Nigeria and see if you can guess it correctly! ")
                        .foregroundColor(.white.opacity(0.7))
                        .padding(20)
                    
                    HStack(spacing:150) {
                        Text ("Other Games")
                        Text ("See All")
                        
                    }
                    Spacer()
                    
                    NavigationLink(destination: AfrobeatGame()) {
                        Text("Start")
                            .font(.title2.bold())
                            .padding(5)
                            .frame(maxWidth: 150)
                            .background(Color(red: 1.0, green: 0.825, blue: 0.298))
                            .foregroundColor(.black)
                            .cornerRadius(20)
                            .shadow(radius: 4)
                    }
               
                }
            }
            .navigationTitle("Afrobeats")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    AfrobeatsView()
}
