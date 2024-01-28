//
//  ContentView.swift
//  friend_time
//
//  Created by Aria Mahinfallah on 1/27/24.
//

import SwiftUI

struct Intro_page: View {
    @Binding var isshowing:Bool
    var body: some View {
        ZStack {
            Color(red: 0.4627, green: 0.700, blue: 0.900)
            .frame(height: 900.0)
            VStack{
                Text("Welcome to Friend Time")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Text("An app for 2024")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.bottom, 150)
                
                NavigationLink(destination: {UserInfo()}, label: {
                    Text("sign up")
                        .font(.headline)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.992))
                        .frame(width: 300.0, height: 75.0)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.127, saturation: 0.429, brightness: 0.994, opacity: 0.765)/*@END_MENU_TOKEN@*/)
                        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                })
                NavigationLink(destination: {LoginView(isshowing: $isshowing)}, label: {
                    Text("log in")
                        .foregroundColor(Color(hue: 1.0, saturation: 0.009, brightness: 0.992))
                        .frame(width: 300.0, height: 75.0)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.942, green: 0.671, blue: 0.535)/*@END_MENU_TOKEN@*/)
                })
            }
        }
    }
}

#Preview {
    Intro_page(isshowing: .constant(true))
}
