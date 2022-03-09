//
//  ContentView.swift
//  Variables In Swift
//
//  Created by Muhammad Huzaifa Khan on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
   @State var currentValue:String = "0"
    var body: some View {
        ZStack {
            Color(.black).opacity(0.9)
            
            VStack {
                TotalText(value: currentValue)
                HStack {
                    CalculatorButton(buttonText: "1",action: didPressNumber)
                    CalculatorButton(buttonText: "2",action: didPressNumber)
                    CalculatorButton(buttonText: "3",action: didPressNumber)
                    CalculatorButton(buttonText: "+", color: Color(.orange),action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "4",action: didPressNumber)
                    CalculatorButton(buttonText: "5",action: didPressNumber)
                    CalculatorButton(buttonText: "6",action: didPressNumber)
                    CalculatorButton(buttonText: "-", color: Color(.orange),action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "7",action: didPressNumber)
                    CalculatorButton(buttonText: "8",action: didPressNumber)
                    CalculatorButton(buttonText: "9",action: didPressNumber)
                    CalculatorButton(buttonText: "X", color: Color(.orange),action: didPressMode)
                }
                HStack {
                    CalculatorButton(buttonText: "0", width: 148,action: didPressNumber)
                    CalculatorButton(buttonText: "C", color:Color(.gray),action: didPressClear)
                    CalculatorButton(buttonText: "=", color: Color(.orange),action: didPressEquals)
                }
            }
            
        }
        .ignoresSafeArea()
    }
        func didPressNumber(button:CalculatorButton) {
//            print(button.buttonText);
            currentValue = button.buttonText;
         }
        func didPressMode(button:CalculatorButton) {
         }
        func didPressClear(button:CalculatorButton) {
         }
        func didPressEquals(button:CalculatorButton) {
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
