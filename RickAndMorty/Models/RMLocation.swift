//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Mina on 10/04/2023.
//

import Foundation
struct RMLOcation: Codable {
    let id : Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
