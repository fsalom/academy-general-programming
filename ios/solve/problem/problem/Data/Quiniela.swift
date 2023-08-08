//
//  Car.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import Foundation

enum Option {
    case one
    case draw
    case two
}

class Match {
    var name: String
    var option: Option?

    init(name: String, option: Option?) {
        self.name = name
        self.option = option
    }
}


struct Quiniela {
    var matches: [Match]
    var name: String

    init(matches: [Match], name: String) {
        self.matches = matches
        self.name = name
    }
}

