//
//  CourseList.swift
//  Design_Practice
//
//  Created by Sirak Zeray on 3/31/20.
//  Copyright © 2020 Sirak Zeray. All rights reserved.
//

import SwiftUI

struct CourseList: View {
    var body: some View {
        VStack {
            CourseView()
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}

struct CourseView: View {
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment : .leading , spacing: 40) {
                Text("Now that we have the basic full-screen card animation, we'll animate some new content underneath. Additionally, we'll implement a close button that will dismiss the full view.")
                Text("About this course")
                    .font(.title)
                    .fontWeight(.bold)
                Text("To follow this course, you'll need to download the source files so that you can compare your progress against mine. In the package, you'll find the design files, the final app and an Xcode project for each section of the course. Now that we have the basic full-screen card animation, we'll animate some new content underneath. Additionally, we'll implement a close button that will dismiss the full view.")
                }
            .padding(30)
                
            .frame(maxWidth : show ? .infinity: screen.width - 60 , maxHeight: show ? .infinity : 280 , alignment: .top)
                
            .offset(y : show ? 460 : 0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 28 , style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
            .opacity(show ? 1 : 0)
            
            
            VStack{
                HStack{
                    VStack(alignment : .leading , spacing : 8) {
                        Text("SwiftUI Advanced")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24, weight: .bold))
                        Text("20 Section")
                            .foregroundColor(Color.white.opacity(0.8))
                    }
                    Spacer()
                    ZStack {
                        Image("Logo1")
                            .opacity(show ? 0 : 1)
                        
                        Image(systemName: "xmark")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color.white)
                        .frame(width: 36, height: 36)
                        .background(Color.black)
                        .clipShape(Circle())
                        .opacity(show ? 1 : 0)
                    }
                }
                Spacer()
                Image("Card2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth : .infinity , alignment: .top)
                    .frame(height : 180)
                
            }
            .padding(20)
            .padding(.top , show ? 50 : 0)
            .frame(maxWidth : show ? .infinity: screen.width - 60 , maxHeight: show ? 460: 280)
            .background(Color("card1"))
            .clipShape(RoundedRectangle(cornerRadius: 28 , style: .continuous))
            .shadow(color: Color("card1").opacity(0.3), radius: 20, x: 0, y: 20)
           
            .onTapGesture {
                self.show.toggle()
            }
        }
        .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                   .edgesIgnoringSafeArea(.all)
    }
}
