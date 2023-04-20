//
//  CharacterErrir.swift
//  clean
//
//  Created by Fernando Salom Carratala on 19/4/23.
//

import Foundation

enum CharacterDataSourceError: Error{
    case badURL
    case badResponse
    case decodeError
    case badRequest
    case invalidResponse
}
