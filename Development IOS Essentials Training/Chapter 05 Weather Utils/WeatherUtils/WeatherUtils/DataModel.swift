//
//  DataModel.swift
//  WeatherUtils
//
//  Created by Muhammad Huzaifa Khan on 13/03/2022.
//

import UIKit
import SwiftUI

struct WeatherData: Hashable{
    var id: Int
    var day:String
    var high:Int
    var low:Int
    var icon:String
    var color:Color
}

class DataModel: NSObject {

    static let data:[WeatherData] = [
        WeatherData(id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill",color: .orange),
    WeatherData(id: 2, day: "Tuesday", high: 75, low: 50, icon: "sun.max.fill",color: .orange),
    WeatherData(id: 3, day: "Wednesday", high: 56, low: 56, icon: "cloud.drizzle.fill",color: .orange),
    WeatherData(id: 4, day: "Thursday", high: 82, low: 60, icon: "cloud.fog.fill",color: .blue),
    WeatherData(id: 5, day: "Friday", high: 70, low: 66, icon: "sun.max.fill",color: .gray),
    WeatherData(id: 6, day: "Saturday", high: 65, low: 54, icon: "sun.max.fill",color: .orange),
    WeatherData(id: 7, day: "Sunday", high: 75, low: 52, icon: "sun.max.fill",color: .orange)
    ]
}
