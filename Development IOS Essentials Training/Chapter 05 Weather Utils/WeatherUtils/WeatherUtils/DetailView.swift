//
//  DetailView.swift
//  WeatherUtils
//
//  Created by Muhammad Huzaifa Khan on 13/03/2022.
//

import SwiftUI

struct DetailView: View {
    
    var data: WeatherData
    @State var isPopoverShowing = false
    var body: some View {
        VStack {
            Text(data.day)
            Button(action:{
                isPopoverShowing = true;
            }){
                Text("Show popover")
            }.padding()
                .sheet(isPresented: $isPopoverShowing){
                    Text("H \(data.high)ºF & L \(data.low)º F")
                  
                }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[0])
    }
}
