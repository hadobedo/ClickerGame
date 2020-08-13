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
    static var breakPNG: String? = "breakblock1"
}

struct GoldBlock: View {
    var body: some View {
            Image("gold")
                .offset(x: -50, y: 150)
            }
}

struct pickaxeImage: View {
    @State var rotation : Double = 0
    var body: some View {
        Image("pickaxe")
            .resizable()
            .scaledToFit()
            .frame(width:120, height: 120)
            .offset(x:40, y:-120)
            .rotationEffect(.degrees(rotation), anchor: .topTrailing)
            .animation(.interpolatingSpring(stiffness: 5, damping: 10, initialVelocity: 10))
            .onTapGesture (count:1){
                self.rotation -= 22
                let seconds = 0.1
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                self.rotation += 22
                }
                breakProgress()
                globalVariables.breakState += 1
        }
    }
}

func breakProgress() {
    switch globalVariables.breakState {
    case 0:
        globalVariables.breakPNG = "breakblock1"
        print ("Empty")
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
        globalVariables.breakState = 0
        print("Break!")
    }
}

struct breakOverlay : View {
    var body: some View {
        Image(globalVariables.breakPNG!)
    }
}

struct ShapesandImages_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
