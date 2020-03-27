//
//  HomeView.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/26/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var showMenu : Bool
    var body: some View {
                    
        VStack {
            HStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                AvatarView(showMenu: $showMenu)
            }
            .padding(.horizontal)
                    .padding(.top)
            Spacer()

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showMenu: .constant(false))
    }
}

struct AvatarView: View {
    @Binding var showMenu : Bool
    var body: some View {
        Button (action : {self.showMenu.toggle()}) {
            Image("Avatar").renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 36 , height: 36)
                .clipShape(Circle())
        }
    }
}


let screen = UIScreen.main.bounds
