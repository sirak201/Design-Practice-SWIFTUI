//
//  MenuView.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/25/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing : 16) {
                
                Text("Meg 28 % Complete")
                    .font(.caption)
                Color.white
                    .frame(width: 38, height: 6 )
                    .cornerRadius(5)
                    .frame(width: 130, height: 6 , alignment: .leading)
                    .background(Color.black.opacity(0.08))
                    .cornerRadius(5)
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(8)
                    
               
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign Out", icon: "person.crop.circle")
            }
            .frame(maxWidth : .infinity)
            .frame(height : 300)
            .background(LinearGradient(gradient: .init(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)) , Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 32, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal , 30)
                
            .overlay(
                Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .offset(x: 0, y: -150)
            )
               
        }
        .padding(.bottom , 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    
    var title : String
    var icon : String
    
    var body: some View {
        HStack(spacing : 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
