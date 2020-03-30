//
//  RingView.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/28/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct RingView: View {
    
    var color1 = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
    var color2 = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    var width : CGFloat = 88
    var height : CGFloat = 88
    var percent : CGFloat = 88
    @Binding var show  : Bool
    
    var body: some View {
        
       let lineWidth = width / 44
       let percentage = 1 - (percent / 100)
        
       return  ZStack {
                
            Circle()
                .stroke(Color.black.opacity(0.1), lineWidth: lineWidth * 5)
                .frame(width: width, height: height)
            Circle()
                .trim(from: show ? CGFloat(percentage) : 1, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .topTrailing, endPoint: .bottomLeading), style: .init(lineWidth: lineWidth * 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20 , 0], dashPhase: 20))
                .rotationEffect(.init(degrees: 90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .frame(width: width, height: height)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            
            Text("\(Int(percent))%")
                .font(.system(size: 14 * lineWidth, weight: .bold, design: .default))
        }
        
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(show: .constant(true)).previewLayout(.fixed(width: 200, height: 200))
    }
}
