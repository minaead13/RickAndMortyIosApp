//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Mina on 10/04/2023.
//

import Foundation
struct RMCharacter: Codable {
    let id : Int
    let name: String
    let status : RMCharacterStatus
    let species:String
    let type:String
    let gender:RMCharacterGender
    let origin : RMOrigin
    let location: RMLocation
    let image:String
    let episode: [String]
    let url: String
    let created: String
    
    
}
struct RMOrigin: Codable {
    let name: String
    let url: String
}
struct RMLocation : Codable {
    let name: String
    let url: String
}

enum RMCharacterStatus : String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
enum RMCharacterGender : String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
