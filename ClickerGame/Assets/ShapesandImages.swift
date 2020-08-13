//
//  ShapesandImages.swift
//  ClickerGame
//
//  Created by Nick B on 2020-08-13.
//  Copyright © 2020 Nick Bonello. All rights reserved.
//

import Foundation
import SwiftUI

struct RectangleBlock: View {
    var body: some View {
            Rectangle()
                .fill(Color.black)
                .shadow(radius:20)
                .frame(width: 150, height: 150)
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
            .animation(.spring())
            .onTapGesture (count:1){
                self.rotation -= 22
                let seconds = 0.2
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                self.rotation += 22
                }
                print("Rotate")
        }
    }
}

struct ShapesandImages_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
