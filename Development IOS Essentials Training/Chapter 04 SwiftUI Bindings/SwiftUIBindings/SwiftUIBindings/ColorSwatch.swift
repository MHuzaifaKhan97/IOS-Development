//
//  ColorSwatch.swift
//  SwiftUIBindings
//
//  Created by Muhammad Huzaifa Khan on 12/03/2022.
//

import SwiftUI

struct ColorSwatch: View {
    
    let color:Color
    var body: some View {
        Image(systemName: "circle.fill")
            .foregroundColor(color)
    }
}

struct ColorSwatch_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatch(color: .red)
    }
}
