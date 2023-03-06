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
    var team: Team?

    init(name: String? = nil, value: Float? = nil, clause: Float? = nil, team: Team? = nil) {
        self.name = name
        self.value = value
        self.clause = clause
        self.team = team
    }
}

class Transfer {
    var player: Player?
    var to: Team?
    var years: Int?
    init(player: Player? = nil, to: Team? = nil, years: Int? = nil) {
        self.player = player
        self.to = to
        self.years = years
    }
}

let valencia = Team(name: "Valencia")
let madrid = Team(name: "Madrid", budget: 100.0)
let manchester = Team(name: "Manchester", budget: 120.0)
let liverpool = Team(name: "Liverpool")

let valverde = Player(name: "Valverde", value: 5.0, clause: 50.0, team: madrid)
let salah = Player(name: "Salah", value: 10.0, clause: 30.0, team: liverpool)

var transfers = [
    Transfer(player: valverde, to: liverpool, years: 4),
Transfer(player: salah, to: manchester)
]

// - - - - - - - - - - - - - - - - - - - - - - - - -
// Crea una función que procese todos los fichajes con las siguiente reglas
// - Al transferir un jugador el equipo al que pertenece
//   debe de tener presupuesto suficiente lo que es asumir su clausula y su sueldo por año
// - Si el jugador no tiene años de contrato es que esta gratis esa temporada
// - Un equipo sin presupuesto solo puede aceptar jugadores gratis

// imprime por pantalla que transferencias se han podido ejecutar y porque
// (presupuesto suficiente/insuficiente, gratis...)
// - - - - - - - - - - - - - - - - - - - - - - - - -

func process(these: [Transfer]) {

}

process(these: transfers)

//: [Next](@next)
