//
//  RingView.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/28/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct RingView: View {
    
    @State var startTrim  = 0.2
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), lineWidth: 5)
                .frame(width: 44, height: 44)
            Circle()
                .trim(from: CGFloat(startTrim), to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading), style: .init(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20 , 0], dashPhase: 20))
                .rotationEffect(.init(degrees: 90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .frame(width: 44, height: 44)
        }
        
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
