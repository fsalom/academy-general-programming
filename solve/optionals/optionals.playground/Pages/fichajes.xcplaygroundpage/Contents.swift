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
let rashford = Player(name: "Rashford", value: 10.0, clause: 100.0, team: manchester)
let salah = Player(name: "Salah", value: 10.0, clause: 30.0, team: liverpool)
let benzema = Player(name: "Benzema", value: 20.0, clause: 70.0, team: madrid)

var transfers = [
    Transfer(player: valverde, to: liverpool, years: 4),
    Transfer(player: salah, to: valencia),
    Transfer(player: rashford, to: madrid, years: 3),
    Transfer(player: benzema, to: valencia, years: 3),
    Transfer(player: benzema, to: manchester, years: 3)
]

func listFinalResults(for players: [Player], and teams: [Team]) {
    for player in players {
        guard let name = player.name,
              let team = player.team,
              let teamName = team.name else {
            continue
        }
        print("\(name) is in \(teamName)")
    }

    for team in teams {
        guard let name = team.name, let budget = team.budget else {
            continue
        }
        print("\(name) has \(budget)")
    }
}
// - - - - - - - - - - - - - - - - - - - - - - - - -
// Crea una función que procese todos los fichajes con las siguiente reglas
// - Al transferir un jugador el equipo al que pertenece
//   debe de tener presupuesto suficiente lo que es asumir su clausula y su sueldo por año
// - El equipo que recibe el pago por el jugador debe de aumentar su presupuesto
// - Si el jugador no tiene años de contrato es que esta gratis esa temporada
// - Un equipo sin presupuesto solo puede aceptar jugadores gratis

// imprime por pantalla que transferencias se han podido ejecutar y porque
// (presupuesto suficiente/insuficiente, gratis...)
// - - - - - - - - - - - - - - - - - - - - - - - - -

func process(these transfers: [Transfer]) {

}

process(these: transfers)
listFinalResults(for: [valverde, rashford, salah, benzema],
                 and: [valencia, madrid, manchester, liverpool])
//: [Next](@next)
