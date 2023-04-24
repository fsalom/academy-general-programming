//
//  CharacterRepositoryProtocol.swift
//  clean
//
//  Created by Fernando Salom Carratala on 19/4/23.
//

import Foundation

protocol CharacterRepositoryProtocol {
    func getPagination(for page: Int) async throws -> ListDTO
    func getPaginationWhenSearching(this name: String, for page: Int) async throws -> ListDTO
}
