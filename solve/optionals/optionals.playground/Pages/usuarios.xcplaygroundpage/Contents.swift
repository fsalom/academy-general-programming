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
    User(name: "Marc", age: 23, childs: [child1]),
    User(name: "John", age: 46, childs: [child1, child2], disability: disability1, income: 50000.0),
    User(name: "Charles", age: 35, disability: disability1, income: 42000.0),
    User(name: "Mary", age: 28, childs: [child1], income: 20000.0)
]

// - - - - - - - - - - - - - - - - -
// Vamos a crear una comprobación de lo que le va a
// cobrar Hacienda a cada usuario. Las reglas son:
// - Si gana entre 0 y 10000 no paga nada
// - Si gana entre 10000 y 25000 paga 20%
// - Si gana entre 25000 y 40000 paga 30%
// - Si gana entre 40000 y 60000 paga 35%
// - Si tiene hijos paga un 5% menos por cada hijo
// - Si tiene una discapacidad paga un 10% menos
// - No puede haber porcentaje negativo por lo que si es así no se cobra nada

// Cuando calcules lo que tiene que pagar cada usuario printea el resultado
// - - - - - - - - - - - - - - - - -

func comprobacionDeHacienda(para usuario: User) {

}

for user in users {
    comprobacionDeHacienda(para: user)
}

//: [Next](@next)
