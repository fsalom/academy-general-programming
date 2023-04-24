//
//  ListUseCase.swift
//  clean
//
//  Created by Fernando Salom Carratala on 8/11/22.
//

import Foundation

enum CharacterUseCaseError: Error{
    case badURL
    case badResponse
    case decodeError
    case badRequest
    case invalidResponse
}

final class CharacterUseCase {
    let repository: CharacterRepositoryProtocol

    init(repository: CharacterRepositoryProtocol) {
        self.repository = repository
    }
}

protocol CharacterUseCaseProtocol {
    func getCharactersAndNextPage(for page: Int) async throws -> ([Character], Bool)
    func getCharactersAndNextPageWhenSearching(this name: String, for page: Int) async throws -> ([Character], Bool)
}

extension CharacterUseCase: CharacterUseCaseProtocol {
    func getCharactersAndNextPage(for page: Int) async throws -> ([Character], Bool) {
        do {
            let list = try await repository.getPagination(for: page)
            let hasNextPage = list.info.next != nil ? true : false
            return (convertToEntity(these: list.results), hasNextPage)
        } catch {
            throw error
        }
    }

    func getCharactersAndNextPageWhenSearching(this name: String, for page: Int) async throws -> ([Character], Bool) {
        do {
            let list = try await repository.getPaginationWhenSearching(this: name, for: page)
            let hasNextPage = list.info.next != nil ? true : false
            return (convertToEntity(these: list.results), hasNextPage)
        } catch {
            throw error
        }
    }

    func convertToEntity(these dtos: [CharacterDTO]) -> [Character] {
        var characters = [Character]()
        dtos.forEach { characterDTO in
            characters.append(Character(dto: characterDTO))
        }
        return characters
    }
}
