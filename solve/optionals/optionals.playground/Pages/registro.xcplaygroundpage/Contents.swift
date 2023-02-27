//: [Previous](@previous)

import Foundation

struct Register {
    var firstName: String?
    var lastName: String?
    var email: String?
    var birthday: String?
    var isGMAIL: Bool = false
    var username: String?
    var password: String?
}

let registers = [
    Register(firstName: "Fer",
             email: "fer@rudo.es",
             username: "fer"),
    Register(firstName: "Joan",
             email: "jamar@gmail.com",
             username: "jamar",
             password: "1234"),
    Register(firstName: "Maria",
             email: "maria@gmail.com",
             password: "1234"),
    Register(username: "test",
             password: "1234"),
]

// - - - - - - - - - - - - - - - - - - - - - - - - -
// Comprobación del registro que tiene que cumplir
// con las siguientes:
// - el username y el password son obligatorios
// - si han escrito un mail comprobar si es un gmail e indicarlo con isGMAIL
// - - - - - - - - - - - - - - - - - - - - - - - - -

func check(this register: Register) -> Bool {
    return false
}

for register in registers {
    check(this: register)
}

//: [Next](@next)
