//
//  ContentView.swift
//  friend_time
//
//  Created by Aria Mahinfallah on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue)
            
                .frame(height: 900.0)

            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("hello")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
