import UIKit

// - - - - - - - - - - - - - - - - -
// Le pides el teléfono a la persona
// que te gusta, ¿te lo dará?
// - - - - - - - - - - - - - - - - -

func esDeVerdad(el numero: String) -> Bool {
    return numero == "666 44 33 21" ? true : false
}

func tePidoElNumero() -> String? {
    let meGustas = (arc4random() % 2 == 0) ? true : false
    let AloMejorTeDoyElDeVerdad = (arc4random() % 2 == 0) ? "666 44 33 21" : "664 44 33 64"
    return meGustas ? AloMejorTeDoyElDeVerdad : nil
}

// - - - - - - - - - - - - - - - - -
// completa este código para que
// printee  🥳 si te da su número
// o 😭 si no lo consigues
// - - - - - - - - - - - - - - - - -
func tengoSuerte() {
    let numero = tePidoElNumero()
}

print("----- tengo suerte? -------")
tengoSuerte()

// - - - - - - - - - - - - - - - - -
// devuelve el número si lo has conseguido
// o 🖕
// - - - - - - - - - - - - - - - - -

func meHaDadoEsteNumero() -> String {
    let numero = tePidoElNumero()

    return ""
}

print("----- me ha dado su número? -------")
meHaDadoEsteNumero()
