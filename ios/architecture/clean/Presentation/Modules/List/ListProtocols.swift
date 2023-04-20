//
//  HomeProtocols.swift
//  clean
//
//  Created by Fernando Salom Carratala on 6/11/22.
//

import Foundation

protocol ListBuilderProtocol {
    func build() -> ListViewController
}

protocol ListRouterProtocol {
}

protocol ListViewModelProtocol {
    func loadMoreCharacter(currentItem: Int)
    func loadCharacters()
    var characters: [Character] { get set }
    var hasNextPage: Bool { get set }
    var listCharactersUpdated: (() -> Void)? { get set }
    var errorHasOcurred: ((Error) -> Void)? { get set }
}
