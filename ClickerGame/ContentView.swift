//
//  ContentView.swift
//  ClickerGame
//
//  Created by Nick Bonello on 2020-08-13.
//  Copyright © 2020 Nick Bonello. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var angle: Double = 0
    
    let impact = UIImpactFeedbackGenerator() // 1
     
    func onePressed() {
        impact.impactOccurred() // 2
    }
    
    var body: some View {
        Button( action: {
            self.angle += 20
            self.onePressed()
        }) {
        VStack{
            Text("Tap Here!")
                .padding()
                .animation(.spring())
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width:200, height: 60)
                .background(ZStack {
                    Color(#colorLiteral(red: 0.8095460172, green: 0.8123425612, blue: 0.9286012231, alpha: 1))
                    
                    (RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    (RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .foregroundColor(Color(#colorLiteral(red: 0.8717908151, green: 0.8748023813, blue: 1, alpha: 1)))
                        .padding(2)
                        .blur(radius: 2)
                })
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 20, x: 20, y:20)
                .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                .rotationEffect(.degrees(angle))
                .animation(.interpolatingSpring(mass: 1, stiffness: 0.5, damping: 0.5, initialVelocity: 2))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.8801284533, green: 0.9221873958, blue: 0.8969705583, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

