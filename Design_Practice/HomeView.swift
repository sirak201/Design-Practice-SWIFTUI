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
    @State var showUpdate  = false
    var body: some View {
                    
        VStack {
            HStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                Spacer()
                AvatarView(showMenu: $showMenu)
                Button(action : {self.showUpdate.toggle()}) {
                    Image(systemName: "bell")
                           .renderingMode(.original)
                           .font(.system(size: 16, weight: .medium))
                           .frame(width: 36, height: 36)
                           .background(Color.white)
                           .clipShape(Circle())
                           .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                           .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
           
            }
            .padding([.horizontal , .top])
            
            
            ScrollView(.horizontal , showsIndicators: false) {
                HStack(spacing : 20) {
                    ForEach(sectionData) { item in
                        GeometryReader { geo in
                                SectionView(section: item)
                                     .rotation3DEffect(Angle(degrees: (Double(geo.frame(in : .global).minX - 30) / -20 ) ), axis: (x: 0.0, y: 10.0, z: 0.0))
                                
                        
//
                        }
                    
                        .frame(width: 275, height: 275)
                    }
                }
                .padding(30)
                .padding(.bottom , 30)
               
            }
            
        
            
            Spacer()
           

        }.sheet(isPresented: $showUpdate) {
            UpdateList()
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

struct SectionView: View {
    var section : Section

    var body: some View {
        VStack(alignment: .leading ) {
            HStack(alignment: .top) {
                Text(section.title)
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width : 160 , alignment: .leading)
                Spacer()
                Image(section.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
            }
            Text(section.text.uppercased())
                
                .frame(maxWidth : .infinity , alignment: .leading)
            
            HStack {
                Spacer()
                section.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
        }
        .padding([.top , .horizontal],  20)
        .frame(width: 270 , height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}


struct Section : Identifiable {
    var id = UUID()
    var title : String
    var text : String
    var logo : String
    var image : Image
    var color : Color
}


let sectionData = [
                
                   Section(title: "Prototype design in SwiftUI", text: "18 Cources", logo: "Logo1", image: Image("Card1") , color:  Color("card1")) ,
                   Section(title: "Build A SwiftUI app", text: "20 Cources", logo: "Logo1", image: Image("Background1") , color:  Color(UIColor(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))),
                   Section(title: "Advance SwiftUI", text: "20 Cources", logo: "Logo1", image: Image("Card3") , color:  Color(UIColor(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))))
]


