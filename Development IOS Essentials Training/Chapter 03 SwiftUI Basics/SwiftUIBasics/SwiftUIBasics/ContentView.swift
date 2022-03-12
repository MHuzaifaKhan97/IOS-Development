//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Muhammad Huzaifa Khan on 12/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HStack {
//            Text("Text1")
//                .foregroundColor(.red)
//            .padding()
//            Text("Text2")
//                .foregroundColor(.red)
//            .padding()
//            Text("Text3")
//                .foregroundColor(.red)
//            .padding()
//
//        }
//        VStack {
//            Text("Text1")
//                .foregroundColor(.red)
//            .padding()
//            Text("Text2")
//                .foregroundColor(.red)
//            .padding()
//            Text("Text3")
//                .foregroundColor(.red)
//            .padding()
//
//        }
      
            VStack {
                Text("Weather")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                    .padding()
                HStack{
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Sunday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
                HStack{
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Monday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                
            }.padding(.all,4)
                HStack{
                    Image(systemName: "cloud.bolt.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Tuesday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
                HStack{
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Wednesday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
                HStack{
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Thursday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
                HStack{
                    Image(systemName: "cloud.drizzle.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Friday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
                HStack{
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.orange)
                    Text("Saturday")
                        .font(.body)
                        .fontWeight(.thin)
                        .foregroundColor(.black)
                    
                }.padding(.all,4)
           
    }
       
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
