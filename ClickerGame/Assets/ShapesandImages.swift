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
                .frame(width: 150, height: 150)
                .offset(x: -75, y: 150)
            }
}

struct pickaxeImage: View {
    var body: some View {
        Image("pickaxe")
            .resizable()
            .scaledToFit()
            .frame(width:120, height: 120)
            .offset(x:40, y:-100)
            .rotationEffect(.degrees(-20))
            .contentShape(Rectangle())
    }
}
