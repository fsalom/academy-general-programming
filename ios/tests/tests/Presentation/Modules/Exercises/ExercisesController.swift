//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class ExercisesController: UIViewController {
    @IBOutlet weak var solutionTextView: UITextView!

    var screen: Screen = .string
    let logger = Logger()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch screen {
        case .optional:
            let optional = OptionalExercise()
            // ESCRIBE AQUI LOS PRINTS DE TUS EJERCICIOS

        case .string:
            let strings = StringExercise()
            // ESCRIBE AQUI LOS PRINTS DE TUS EJERCICIOS

        case .array:
            let array = ArrayExercise()
            // ESCRIBE AQUI LOS PRINTS DE TUS EJERCICIOS

        case .classes:
            
            break
        case .arrayAndclass:

            break
        }
        solutionTextView.text = logger.getAllLines()
    }
}
