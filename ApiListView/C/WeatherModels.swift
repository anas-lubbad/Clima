//
//  WeatherModels.swift
//  ApiListView
//
//  Created by anas on 03/11/2021.
//

import Foundation

struct WeatherModels {
    let id: Int
    let name: String
    let temp: Double
    
    var condtionName: String {
        switch id {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    var tempName: String {
        return String(format: "%.1f", temp)
    }
}
