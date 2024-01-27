//
//  ContentView.swift
//  friend_time
//
//  Created by Aria Mahinfallah on 1/27/24.
//

import SwiftUI

struct signup_page: View {
    @Binding var isshowing:Bool
    var body: some View {
        ZStack {
            Color(.cyan)
            .frame(height: 900.0)
            VStack{
                Text("Welcome to Friend Time")
                Button(action: {isshowing = false}, label: {
                    Text("sign up")
                })
            }
        }
    }
}

#Preview {
    signup_page(isshowing: .constant(true))
}
