//
//  Actror.swift
//  ApiListView
//
//  Created by anas on 06/11/2021.
//

import Foundation

struct Actors: Codable {
    let actors: [Actor]
    let name: String
}

struct Actor: Codable {
    let id: Int
    let name: String
    //let localized_name: String
}
