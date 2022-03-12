//
//  CalculatorButton.swift
//  Variables In Swift
//
//  Created by Muhammad Huzaifa Khan on 07/03/2022.
//

import SwiftUI

struct CalculatorButton: View {
    var buttonText:String = "1"
    var color:Color = Color(hue: 1.0, saturation: 0.052, brightness: 0.245)
    var width:CGFloat = 70
    var action: (CalculatorButton) -> Void = {_ in }
    var mode:CalculatorMode = .notSet
    
    var body: some View {
        Button{
//          didPressButton()
//            action(CalculatorButton)
//            or
           action(self)
        } label:
        {
            Text(buttonText)
                .font(.largeTitle)
                .frame(width: width, height: 70, alignment: .center)
                .background(color)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 50))
        }
    }
    
//    func didPressButton() {
//        print(buttonText)
//    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton()
    }
}
