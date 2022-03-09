//
//  ContentView.swift
//  Conditions
//
//  Created by Muhammad Huzaifa Khan on 09/03/2022.
//

import SwiftUI

struct ContentView: View {
  @State var isOn: Bool = true
    var body: some View {
        Button{
            isOn.toggle()
        }label:{
            if(isOn){
                Text("Is on")
                    .padding()
            }else{
                Text("Is Off")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
