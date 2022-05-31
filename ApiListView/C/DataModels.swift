//
//  DataModels.swift
//  ApiListView
//
//  Created by anas on 03/11/2021.
//

import Foundation

struct DataModels: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Weather: Codable {
    let id: Int
    let main: String
}

struct Main: Codable {
    let temp: Double
}
