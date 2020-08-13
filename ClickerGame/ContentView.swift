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
    @State var gameScore = 0
    var body: some View {
        VStack {
            Button( action: {
                self.angle += 20
            }) {
                Text("Tap me!")
                    .font(.system(size: 40))
                    .font(Font.title.weight(.semibold))
                    .frame(width: 300, height: 300)
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .clipShape(Circle())
                
                    .onTapGesture() {
                        self.gameScore += 1
                }
                Spacer()
                Text("Score: \(gameScore)")
                    .font(.system(size:30))
                
            }.buttonStyle(PlainButtonStyle())
        }.frame(width:500, height:500)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

