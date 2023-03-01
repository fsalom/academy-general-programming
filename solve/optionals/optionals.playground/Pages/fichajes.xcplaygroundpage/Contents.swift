//: [Previous](@previous)

import Foundation

class Team {
    var name: String?
    var budget: Float?

    init(name: String? = nil, budget: Float? = nil) {
        self.name = name
        self.budget = budget
    }
}

class Player {
    var name: String?
    var value: Float?
    var clause: Float?
}

class Transfers {
    var player: Player?
    var fromTeam: Team?
    var toTeam: Team?
}

let valencia = Team(name: "Valencia")
let madrid = Team(name: "Madrid", budget: 100.0)
let manchester = Team(name: "Manchester", budget: 120.0)
let liverpool = Team(name: "Liverpool")


var transfers = []
//: [Next](@next)
