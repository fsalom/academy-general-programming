//
//  data+enum.swift
//  tests
//
//  Created by Fernando Salom Carratala on 8/9/22.
//

import Foundation
import UIKit

enum Screen {
    case optional
    case string
    case array
    case classes
    case arrayAndclass
}

struct Section {
    var name: String
    var viewController: UIViewController
    var type: Screen
}
