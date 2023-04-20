//
//  ListRepository.swift
//  clean
//
//  Created by Fernando Salom Carratala on 8/11/22.
//

import Foundation


final class RickAndMortyRepository: CharacterRepositoryProtocol {
    var datasource: CharacterDataSourceProtocol

    init(datasource: CharacterDataSourceProtocol) {
        self.datasource = datasource
    }

    func getList(for page: Int) async throws -> ListDTO {
        return try await self.datasource.getList(for: page)
    }

    func search(this name: String, for page: Int) async throws -> ListDTO {
        return try await self.datasource.search(this: name, for: page)
    }
}
