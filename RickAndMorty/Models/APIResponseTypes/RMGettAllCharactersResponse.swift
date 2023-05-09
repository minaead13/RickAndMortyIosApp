//
//  RMGettAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Mina on 11/04/2023.
//

import Foundation

struct RMGettAllCharactersResponse : Codable {
    struct Info : Codable {
        let count: Int
        let pages: Int
        let next: String
        let prev: String?
    }
    
    let info : Info
    let results: [RMCharacter]
}



