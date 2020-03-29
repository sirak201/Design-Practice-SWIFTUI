//
//  UpdateList.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/28/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            
            List(updateData) { data in
                    NavigationLink(destination: Text("Text")) {
                        
                        HStack(spacing : 18) {
                            Image(data.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80 , height: 80)
                                .background(Color.black)
                                .cornerRadius(20)
                                .padding(.trailing , 4)
                            VStack(alignment : .leading, spacing: 8.0) {
                                Text(data.title)
                                    .font(.system(size: 20, weight: .bold))
                                   
                                Text(data.text)
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                .lineLimit(2)
                                Text(data.date)
                                    .font(.caption)
                                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                    .fontWeight(.bold)
                            }
                        }
                        .padding(.vertical , 8)
                    }
            }
            
        .navigationBarTitle("Updates")
        }
    }
}



struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}


struct  Update : Identifiable {
    var id =  UUID()
    var image: String
    var title : String
    var text : String
    var date : String
}

let updateData = [
    Update(image: "Card1", title: "SwiftUI", text: "Take your SwiftUI app to the app store with advanced techniques like API data, package and CMC", date: "JAN 1"),
    Update(image: "Card2", title: "WebFlow", text: "Design and animate a high converting landing page with advaned interaction and payment ", date: "AUG 13"),
    Update(image: "Card3", title: "ProtoPie", text: "Learn how to code custom UI's animateion, gestures and components", date: "Jan 1"),
    Update(image: "Card4", title: "SwiftUI", text: "Take your SwiftUI app to the app store with advanced techniques like API data, package and CMC", date: "APR 30"),
    Update(image: "Card5", title: "Frameer PlayGround", text: "Design and animate a high converting landing page with advaned interaction and payment", date: "MAR 21")
]
