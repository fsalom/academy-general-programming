//
//  RickMortyLocalDataSource.swift
//  clean
//
//  Created by Fernando Salom Carratala on 19/4/23.
//

import Foundation

class RickAndMortyLocalDataSource: CharacterDataSourceProtocol {
    func getPagination(for page: Int) async throws -> ListDTO {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/?page=\(page)") else {
            throw CharacterDataSourceError.badURL
        }
        let request = URLRequest(url: url)
        print(request)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else {
                throw CharacterDataSourceError.invalidResponse
            }
            let decoder = JSONDecoder()
            do {
                if (200..<300).contains(response.statusCode) {
                    return try decoder.decode(ListDTO.self, from: data)
                } else {
                    throw CharacterDataSourceError.badResponse
                }
            } catch {
                throw CharacterDataSourceError.decodeError
            }
        } catch {
            throw CharacterDataSourceError.badRequest
        }
    }

    func getPaginationWhenSearching(this name: String, for page: Int) async throws -> ListDTO {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/?name=\(name)&page=\(page)") else {
            throw CharacterDataSourceError.badURL
        }
        let request = URLRequest(url: url)
        print(request)
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else {
                throw CharacterDataSourceError.invalidResponse
            }
            let decoder = JSONDecoder()
            do {
                if (200..<300).contains(response.statusCode) {
                    return try decoder.decode(ListDTO.self, from: data)
                } else {
                    throw CharacterDataSourceError.badResponse
                }
            } catch {
                throw CharacterDataSourceError.decodeError
            }
        } catch {
            throw CharacterDataSourceError.badRequest
        }
    }

}
