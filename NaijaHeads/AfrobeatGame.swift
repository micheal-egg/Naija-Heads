//
//  AfrobeatGame.swift
//  NaijaHeads
//


import SwiftUI

struct AfrobeatGame: View {
    
    //State - When something changes rebuild UI
    //Important because UI will not update
    //Private - To only be used in this file
    //Private is good for Encapsulating stuff
    @State private var showingCountdown = true
    @State private var countdown = 3

    var body: some View {
        ZStack {
            AppBackground()
            //This is my If statement Logic:
                //SC is true from the the start so I get that overlay
                //IgnoreSafeA makes sure the whole screen is covered
            if showingCountdown {
                Color.black.opacity(0.6)
                    .ignoresSafeArea()
                //Notes
                //condition ? ValueIfTrue : ValueIfFalse
                //countdown > 0 | "\(Countdown)" | "GO!"
                //This means:
                //If countdown > 0 Print the Countdown which is getting refreshed with @State and once it is no longer greater than one. Start!!
                //It reminds me of a for loop statement in Python
                //I use String Interpol here
                //Turning int to str with \(int)
                Text(countdown > 0 ? "\(countdown)" : "GO!")
                    .font(.system(size: 96, weight: .heavy))
                    .foregroundColor(.white)
            }
        }
        .onAppear {
            OrientationManager.lock(.landscape, rotateTo: .landscapeRight)
            startCountdown()
        }
        .onDisappear {
            OrientationManager.unlock()
        }
    }

    //This is private to my Afrobeatgame Logic
    private func startCountdown() {
        countdown = 3
        showingCountdown = true
        //Inbuilt timer, every second run code till the countdown is zero
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if countdown > 0 {
                countdown -= 1
            } else {
                //Stop the timer
                timer.invalidate()
                showingCountdown = false
                // startGame()
            }
        }
    }
}

#Preview {
    AfrobeatGame()
}
