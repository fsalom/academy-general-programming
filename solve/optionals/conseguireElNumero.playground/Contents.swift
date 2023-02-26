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
func tengoSuerte() -> String {
    let numero = tePidoElNumero()
}

print("----- tengo suerte? -------")
tengoSuerte()

// - - - - - - - - - - - - - - - - -
// devuelve el número si lo has conseguido
// o 🥹 si no
// - - - - - - - - - - - - - - - - -

func meHaDadoEsteNumero() -> String {
    let numero = tePidoElNumero()

    return ""
}

print("----- me ha dado su número? -------")
meHaDadoEsteNumero()

// - - - - - - - - - - - - - - - - -
// Pide el número de telefono y una vez
// que te lo den consulta si es el correcto
// devolviendo 🥳 si te ha dado número y es correcto
// devolviendo 😭 si no lo has conseguido
// devolviendo 😡 si no era correcto
// - - - - - - - - - - - - - - - - -

func meHaDadoEsteNumeroYLoCompruebo() -> String {
    let numero = tePidoElNumero()
    esDeVerdad(el: numero)
    return ""
}

print(meHaDadoEsteNumeroYLoCompruebo())
