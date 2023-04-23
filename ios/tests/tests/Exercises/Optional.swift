//
//  optional.swift
//  tests
//
//  Created by Fernando Salom Carratala on 8/9/22.
//

import Foundation
import UIKit

class OptionalExercise {
    /*:
     ## Ejecicio 1
     Crea una función que calcule el area de un rectangulo con 2 parámetros de tipo Double. Sí le pasas un número negativo no debes calcular el area.
     Crea una declaración de tipo "guard" que verifique si el número es negativo o no y devuelva "nil" en caso de que sea negativo. Si ambos números son positivos calcula el area
    */
    func test1(x: Double, y: Double){

    }

    /*:
     ## Ejecicio 2
     Crea una función que tenga 2 parámetros opcionales y devuelva un Int opcional. Si algún número es nil devuelve nil sino devuelve la suma de los números
     */
    func test2(x: Int?, y: Int?) -> Int?{
        return 0
    }

    /*:
     ## Ejecicio 3
     Cuando se trabaja con objetos de UIKit ocasionalmente necesitas manejar opcionales sobre los datos que introduce el usuario. Por ejemplo los textfields inicializados más abajos tienen una propiedad text que es de tipo "String?"

     Crea una función con el código que encontrarás a continuación que devuelva un objeto User solo en el caso de que sus parametros no sean nil
     */
    struct User {
        var firstName: String
        var lastName: String
        var age: String
    }


    func test3(firstName: String?, lastName: String?, age: String?) -> User? {
        let firstNameTextField = UITextField()
        let lastNameTextField = UITextField()
        let ageTextField = UITextField()

        firstNameTextField.text = firstName
        lastNameTextField.text = lastName
        ageTextField.text = age

        return User(firstName: "", lastName: "", age: "")

    }

    /*:
     ## Ejecicio 4
     Llama a la función que hay arriba y captura el valor que devuelve y devuelve todas las propiedades concatenadas, en caso de ser nil devolver nil

    */
    func test4() -> String? {
        return ""
    }

    /*:
     ## Ejercicio 5
     Escribe una función que tenga 2 opcionales y un no opcionarl y que devuelva la multiplicación de aquellos parametros que no sean nil. No se pueden usar defaults
     */
    func test5(x: Int?, y: Int?, number: Int) -> Int{
        return 0
    }
}
