//
//  MockCharacterDataSource.swift
//  clean
//
//  Created by Fernando Salom Carratala on 19/4/23.
//

import Foundation

class MockCharacterDataSource: CharacterDataSourceProtocol {
    func getPagination(for page: Int) async throws -> ListDTO {
        let info = InfoDTO(count: 20, pages: 1)
        var characters = [CharacterDTO]()
        for index in 0...20 {
            characters.append(CharacterDTO(image: "https://randomuser.me/api/portraits/men/\(index).jpg",
                                           name: "hombre\(index)"))
        }
        let list = ListDTO(info: info,
                           results: characters)
        return list
    }

    func getPaginationWhenSearching(this name: String, for page: Int) async throws -> ListDTO {
        let info = InfoDTO(count: 20, pages: 1)
        var characters = [CharacterDTO]()
        for index in 0...20 {
            characters.append(CharacterDTO(image: "https://randomuser.me/api/portraits/women/\(index).jpg",
                                           name: "mujer\(index)"))
        }
        let list = ListDTO(info: info,
                           results: characters)
        return list
    }

}
