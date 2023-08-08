//
//  PagerViewBuilder.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import Foundation

final class PagerViewBuilder {
    func build() -> PagerViewController {
        var pageControllers = [PageViewController]()
        var matches = [Match]()
        matches.append(Match(name: "Stromsgodset - Valerenga", option: nil))
        matches.append(Match(name: "Hamarkameratene - Brann", option: nil))
        matches.append(Match(name: "Haugesund - Rosenborg", option: nil))
        matches.append(Match(name: "Odds - Stabaek", option: nil))
        matches.append(Match(name: "Sandefjord - Sarpsbor", option: nil))
        matches.append(Match(name: "Viking - Bodo Glimt", option: nil))
        matches.append(Match(name: "Brommapojkarna - Varnamo", option: nil))
        matches.append(Match(name: "Elfsborg - Sirius", option: nil))
        matches.append(Match(name: "Kalmar - Aik Solna", option: nil))
        matches.append(Match(name: "Malmoe - Halmstads", option: nil))
        var quiniela = Quiniela(matches: matches, name: "")

        for num in 0...10 {
            quiniela.name = "Quiniela \(num)"
            pageControllers.append(PageViewBuilder().build(with: quiniela))
        }

        let viewController = PagerViewController()
        viewController.pageControllers = pageControllers
        return viewController
    }
}
