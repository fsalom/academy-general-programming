//
//  PageViewBuilder.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import Foundation

final class PageViewBuilder {
    func build(with quiniela: Quiniela) -> PageViewController {
        let viewModel = PageViewModel(quiniela: quiniela)
        let viewController = PageViewController()
        viewController.viewModel = viewModel
        return viewController
    }
}
