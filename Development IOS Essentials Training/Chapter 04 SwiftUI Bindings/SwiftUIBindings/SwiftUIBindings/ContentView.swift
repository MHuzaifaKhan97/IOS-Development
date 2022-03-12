//
//  ContentView.swift
//  SwiftUIBindings
//
//  Created by Muhammad Huzaifa Khan on 12/03/2022.
//

import SwiftUI

struct ContentView: View {
    
//    @State var name = ""
    @State var red = 1.0
    @State var green = 1.0
    @State var blue = 0.5
    var body: some View {
//        VStack {
//            TextField("Name:", text: $name)
//            Text("Hello, \(name)")
//                .padding()
//        }
        
        VStack{
            Text("ColorPicker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .padding()
            Image(systemName: "gamecontroller.fill")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color( red: red, green: green, blue: blue, opacity: 1.0))
            
              
                ColorSlider(value: $red,color: .red)
                ColorSlider(value: $green,color: .green)
                ColorSlider(value: $blue,color: .blue)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
