//
//  TotalText.swift
//  Variables In Swift
//
//  Created by Muhammad Huzaifa Khan on 07/03/2022.
//

import SwiftUI

struct TotalText: View {
    var value:String = "0"
    var body: some View {
        Text(value)
            .foregroundColor(.white)
            .fontWeight(.light)
            .padding(.all,16)
            .font(.system(size:60))
//            .background(.black)
            .lineLimit(1)
    }
}

struct TotalText_Previews: PreviewProvider {
    static var previews: some View {
        TotalText().background(.black)
    }
}
