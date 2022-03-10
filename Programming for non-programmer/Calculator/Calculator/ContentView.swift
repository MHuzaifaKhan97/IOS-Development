//
//  ContentView.swift
//  Variables In Swift
//
//  Created by Muhammad Huzaifa Khan on 03/03/2022.
//

import SwiftUI

enum CalculatorMode{
    case notSet
    case addition
    case multiplication
    case subtraction
}

struct ContentView: View {
   @State var currentValue:String = "0"
   @State var currentMode:CalculatorMode = .notSet
   @State var lastButtonWasMode = false
    @State var savedNum: Int = 0
   @State var currentValueInt = 0
   
    var body: some View {
        ZStack {
            Color(.black).opacity(0.9)
            
            VStack {
                TotalText(value: currentValue)
                HStack {
                    CalculatorButton(buttonText: "1",action: didPressNumber)
                    CalculatorButton(buttonText: "2",action: didPressNumber)
                    CalculatorButton(buttonText: "3",action: didPressNumber)
                    CalculatorButton(buttonText: "+", color: Color(.orange),action: didPressMode,mode: .addition)
                }
                HStack {
                    CalculatorButton(buttonText: "4",action: didPressNumber)
                    CalculatorButton(buttonText: "5",action: didPressNumber)
                    CalculatorButton(buttonText: "6",action: didPressNumber)
                    CalculatorButton(buttonText: "-", color: Color(.orange),action: didPressMode, mode: .subtraction)
                }
                HStack {
                    CalculatorButton(buttonText: "7",action: didPressNumber)
                    CalculatorButton(buttonText: "8",action: didPressNumber)
                    CalculatorButton(buttonText: "9",action: didPressNumber)
                    CalculatorButton(buttonText: "x", color: Color(.orange),action: didPressMode, mode: .multiplication)
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
    func didPressNumber(button:CalculatorButton){
        if lastButtonWasMode {
            lastButtonWasMode = false
            currentValueInt = 0
            
        }
//        let currentValueInt = Int(currentValue + button.buttonText)!
//            currentValue = "\(currentValueInt)"
//        OR
        if let parsedValue = Int("\(currentValueInt)" + button.buttonText){
            currentValueInt = parsedValue
            updateText()
        }else{
            currentValue = "Error"
            currentValueInt = 0
        }
         }
        func didPressMode(button:CalculatorButton) {
            currentMode = button.mode
            lastButtonWasMode = true
            print(currentMode)
         }
        func didPressClear(button:CalculatorButton) {
            currentValue = "0"
            currentMode = .notSet
            lastButtonWasMode = false
            currentValueInt = 0
            savedNum = 0
         }
        func didPressEquals(button:CalculatorButton) {
            if(currentMode == .notSet || lastButtonWasMode){
                return
            }
            if(currentMode == .addition){
                savedNum += currentValueInt
            }
            else if(currentMode == .subtraction){
                savedNum -= currentValueInt
            }
            
            else if(currentMode == .multiplication){
                savedNum *= currentValueInt
            }
            
            currentValueInt = savedNum
            updateText()
            lastButtonWasMode = true
            print(savedNum)
            
         }
        func updateText(){
            if currentMode == .notSet  {
                savedNum = currentValueInt
            }
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let num = NSNumber(value:currentValueInt)
            
//            currentValue = "\(currentValueInt)"
            currentValue = numberFormatter.string(from: num) ?? "Error"
            
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
