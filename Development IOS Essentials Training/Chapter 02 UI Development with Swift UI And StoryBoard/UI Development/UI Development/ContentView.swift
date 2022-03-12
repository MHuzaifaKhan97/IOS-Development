//
//  ContentView.swift
//  UI Development
//
//  Created by Muhammad Huzaifa Khan on 12/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .foregroundColor(.orange)
            .fontWeight(.bold)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
