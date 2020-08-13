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
    var body: some View {
        VStack {
        RectangleBlock()
        pickaxeImage()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

