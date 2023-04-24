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

    func getPagination(for page: Int) async throws -> ListDTO {
        return try await self.datasource.getPagination(for: page)
    }

    func getPaginationWhenSearching(this name: String, for page: Int) async throws -> ListDTO {
        return try await self.datasource.getPaginationWhenSearching(this: name, for: page)
    }
}
