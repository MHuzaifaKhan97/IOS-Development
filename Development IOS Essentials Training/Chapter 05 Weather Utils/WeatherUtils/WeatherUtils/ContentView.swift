//
//  ContentView.swift
//  WeatherUtils
//
//  Created by Muhammad Huzaifa Khan on 13/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(DataModel.data, id: \.self){ object in
                HStack{
                    Image(systemName: object.icon)
                        .foregroundColor(object.color)
                    Text("\(object.high)º F")
                        .foregroundColor(.blue)
                    
//                    Text("\(object.day)")
                    NavigationLink(object.day, destination: DetailView(data: object))
                }
            }
            .navigationTitle("New York City")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
