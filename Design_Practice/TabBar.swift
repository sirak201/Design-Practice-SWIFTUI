//
//  TabBar.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/28/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("Certificate")
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
