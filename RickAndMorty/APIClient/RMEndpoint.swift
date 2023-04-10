//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Mina on 10/04/2023.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint : String {
    /// Endpoint to get chracter info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
