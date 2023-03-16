import UIKit

enum NetworkError: Error {
    case badRequest
    case notFound
    case serverFailed
}

enum InfoError: Error {
    case nameNotFound
    case nameIsEmpty
}

struct Info {
    var name: String?
}

func setInfo() -> Info {
    let randomInt = Int.random(in: 0..<10)
    if randomInt % 2 == 0 {
        return Info()
    }
    return Info(name: "SUCCESS: this is my information")
}

func network() throws -> Info {
    let randomInt = Int.random(in: 0..<10)
    if randomInt % 2 == 0 {
        if 0...3 ~= randomInt {
            throw NetworkError.badRequest
        } else if 3...6 ~= randomInt {
            throw NetworkError.notFound
        } else {
            throw NetworkError.serverFailed
        }
    }
    return setInfo()
}

func getInformation() throws -> Info {
    do {
        let info = try network()
        guard let name = info.name else {
            throw InfoError.nameNotFound
        }
        if name.isEmpty {
            throw InfoError.nameIsEmpty
        }
        return info
    } catch {
        throw error
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - -
// Crea una función que llame a getInformation() y haga lo siguiente:
// - Si devuelve un objeto information imprimes el valor de name
// - Si da error llama a resolveThis(error: Error) y devuelve dependiendo del tipo de error:
//   - Si da un NetworkError imprime FAIL NETWORK: + el tipo de error que se ha producido
//   - Si da un InfoError imprime FAIL INFO: + el tipo de error que se ha producido
// - - - - - - - - - - - - - - - - - - - - - - - - -

func resolveThis(error: Error) {

}

func information() {

}

for _ in 0...10 {
    information()
}

