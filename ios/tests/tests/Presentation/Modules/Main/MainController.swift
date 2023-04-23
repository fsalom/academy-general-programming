//
//  ViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 6/9/22.
//

import UIKit

class MainController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var sections = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

        let storyboard = UIStoryboard(name: "Exercises", bundle: nil)
        let optionalVC = storyboard.instantiateViewController(withIdentifier: "ExercisesController") as! ExercisesController
        sections.append(Section(name: "Exercises String", viewController: optionalVC, type: .string))
        sections.append(Section(name: "Exercises Array", viewController: optionalVC, type: .array))
        sections.append(Section(name: "Exercises Optional", viewController: optionalVC, type: .optional))
    }
}

