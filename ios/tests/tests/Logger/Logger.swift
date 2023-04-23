//
//  Logger.swift
//  tests
//
//  Created by Fernando Salom Carratala on 8/9/22.
//


class Logger {
    var lines = [String]()

    func setLine(with text: Any) {
        if text is Int {
            lines.append("\(text as! Int)")
        } else if text is Double {
            lines.append("\(text as! Double)")
        } else {
            lines.append(String(describing: text))
        }


    }

    func getAllLines() -> String {
        var fullText: String = ""
        for line in lines {
            fullText.append(line + "\n")
        }
        lines.removeAll()
        return fullText
    }
}
