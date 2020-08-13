//
//  ShapesandImages.swift
//  ClickerGame
//
//  Created by Nick B on 2020-08-13.
//  Copyright © 2020 Nick Bonello. All rights reserved.
//

import Foundation
import SwiftUI

struct globalVariables {
    static var breakState: Int = 0
    static var breakPNG: String = ""
}

struct GoldBlock: View {                                                                            // Draws the gold block, sets image and offset
    var body: some View {
            Image("gold")
                .offset(x: -50, y: 150)
            }
}

struct pickaxeImage: View {                                                                         // Draws the pickaxe
    @State var rotation : Double = 0
    var body: some View {
        Image("pickaxe")
            .resizable()                                                                            // Makes image resizable
            .scaledToFit()                                                                          // Makes image scale
            .frame(width:120, height: 120)                                                          // Sets image frame
            .offset(x:40, y:-120)                                                                   // Makes image position
            .rotationEffect(.degrees(rotation), anchor: .topTrailing)                               // Sets rotation effect and anchor point
            .animation(.interpolatingSpring(stiffness: 5, damping: 10, initialVelocity: 10))        // Animates the rotation, adding spring effect
            .onTapGesture (count:1){                                                                // On tap, run this code...
                self.rotation -= 22                                                                 // Rotate 22 degrees back
                let seconds = 0.1                                                                   // Wait 0.1 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {                         // Wait 0.1 seconds
                self.rotation += 22                                                                 // Rotate 22 degrees forward
                }
                
                globalVariables.breakState += 1                                                     // Adds 1 to state of block break
                breakProgress()
        }
    }
}


func breakProgress() {
    switch globalVariables.breakState {
    case 1:
        globalVariables.breakPNG = "breakblock1"
        print("1")
    case 2:
        globalVariables.breakPNG = "breakblock2"
        print("2")
    case 3:
        globalVariables.breakPNG = "breakblock3"
        print("3")
    case 4:
        globalVariables.breakPNG = "breakblock4"
        print("4")
    case 5:
        globalVariables.breakPNG = "breakblock5"
        print("5")
    case 6:
        globalVariables.breakPNG = "breakblock6"
        print("6")
    default:
        globalVariables.breakPNG = "breakblock0"
        globalVariables.breakState = 0
        print("0")
    }
}

struct breakOverlay : View {                                                                        // Draws block breaking effect
    var body: some View {
        Image(globalVariables.breakPNG)                                                             // Chooses the image to draw
    }
}

struct ShapesandImages_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
