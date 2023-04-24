//
//  HomeViewModel.swift
//  clean
//
//  Created by Fernando Salom Carratala on 6/11/22.
//

final class ListViewModel: ListViewModelProtocol {

    let router: ListRouterProtocol
    var characterUseCase: CharacterUseCaseProtocol
    
    var characters = [Character]() {
        didSet {
            listCharactersUpdated?()
        }
    }
    var hasNextPage = true {
        didSet {
            if hasNextPage == true {
                page += 1
            }
        }
    }
    var page: Int = 1
    var listCharactersUpdated: (() -> Void)?
    var errorHasOcurred: ((Error) -> Void)?

    init(router: ListRouterProtocol, characterUseCase: CharacterUseCaseProtocol) {
        self.router = router
        self.characterUseCase = characterUseCase
    }
}

extension ListViewModel {
    //MARK: Life cycle
    func viewDidLoad() {
        loadCharacters()
    }

    //MARK: Actions
    func loadMoreCharacter(currentItem: Int){
        if (characters.count - 5 < currentItem) && hasNextPage {
            loadCharacters()
        }
    }

    func loadCharacters() {
        if !hasNextPage { return }
        Task {
            do {
                let (characters, hasNextPage) = try await characterUseCase.getCharactersAndNextPage(for: page)
                self.characters.append(contentsOf: characters)
                self.hasNextPage = hasNextPage
            } catch {
                errorHasOcurred?(error)
            }
        }
    }
}
