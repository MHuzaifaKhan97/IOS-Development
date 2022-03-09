//
//  ContentView.swift
//  Variables In Swift
//
//  Created by Muhammad Huzaifa Khan on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).opacity(0.9)
            
            VStack {
                TotalText()
                HStack {
                    CalculatorButton(buttonText: "1")
                    CalculatorButton(buttonText: "2")
                    CalculatorButton(buttonText: "3")
                    CalculatorButton(buttonText: "+", color: Color(.orange))
                }
                HStack {
                    CalculatorButton(buttonText: "4")
                    CalculatorButton(buttonText: "5")
                    CalculatorButton(buttonText: "6")
                    CalculatorButton(buttonText: "-", color: Color(.orange))
                }
                HStack {
                    CalculatorButton(buttonText: "7")
                    CalculatorButton(buttonText: "8")
                    CalculatorButton(buttonText: "9")
                    CalculatorButton(buttonText: "X", color: Color(.orange))
                }
                HStack {
                    CalculatorButton(buttonText: "0", width: 148)
                    CalculatorButton(buttonText: "C", color:Color(.gray))
                    CalculatorButton(buttonText: "=", color: Color(.orange))
                }
            }
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
