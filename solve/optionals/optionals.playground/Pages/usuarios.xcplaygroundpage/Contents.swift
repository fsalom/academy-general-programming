//: [Previous](@previous)

import Foundation

struct Disability {
    var name: String
}

struct User {
    var name: String
    var age: Int
    var childs = [User]()
    var disability: Disability?
    var income: Float?
}

let disability1 = Disability(name: "movilidad reducida")

let child1 = User(name: "Peter", age: 5)
let child2 = User(name: "Nancy", age: 19)

let users = [
    child1,
    child2,
    User(name: "John", age: 46, childs: [child1, child2], disability: disability1, income: 50000.0),
    User(name: "Mary", age: 28, childs: [child1], income: 20000.0)
]

// - - - - - - - - - - - - - - - - -
// Vamos a crear una comprobación de lo que le va a
// cobrar Hacienda a cada usuario. Las reglas son:
// - - - - - - - - - - - - - - - - -

func comprobacionDeHacienda(para usuario: User) {


}

//: [Next](@next)
