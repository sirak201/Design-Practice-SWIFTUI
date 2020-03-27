//
//  Home.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/26/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showMenu : Bool = false
    @State var viewState : CGSize = .zero
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            HomeView(showMenu: $showMenu)
                .padding(.top , 44)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .offset(y: showMenu ? -450 : 0)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)

                .rotation3DEffect(Angle(degrees: showMenu ?  Double(self.viewState.height / 10) - 10 : 0), axis: (x: self.showMenu ? 10 : 0, y: 0.0, z: 0.0))
                .scaleEffect(showMenu ? 0.9 : 1)
                .edgesIgnoringSafeArea(.all)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            
            MenuView()
                .background(Color.black.opacity(0.01))
                .offset(y: showMenu ? 0 : screen.height)
                .offset(y: self.viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showMenu.toggle()
                }
            .gesture(
                DragGesture()
                    .onChanged { value in
                            self.viewState = value.translation
                }
                    .onEnded { value in
                        self.viewState = .zero
                }
            )
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
