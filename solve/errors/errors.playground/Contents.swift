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
    return Info(name: "my information")
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
        if let name = info.name {
            if name.isEmpty {
                throw InfoError.nameIsEmpty
            }
            throw InfoError.nameNotFound
        }
        return info
    } catch {
        throw error
    }
}



func resolveThis(error: Error) -> String {

}

// - - - - - - - - - - - - - - - -
//
// - - - - - - - - - - - - - - - -
func information() {

}
