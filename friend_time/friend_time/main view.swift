//
//  main view.swift
//  friend_time
//
//  Created by Aria Mahinfallah on 1/27/24.
//

import SwiftUI

struct main_view: View {
    @State var sheetshowing = true
    var body: some View {
        
        Text("hello world").sheet(isPresented: $sheetshowing, content: {NavigationStack{Intro_page(isshowing: $sheetshowing).interactiveDismissDisabled()}
        })
    }
}

#Preview {
    main_view()
}
