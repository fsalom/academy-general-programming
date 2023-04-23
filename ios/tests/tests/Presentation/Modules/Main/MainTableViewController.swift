//
//  MainTableViewController.swift
//  tests
//
//  Created by Fernando Salom Carratala on 7/9/22.
//

import Foundation
import UIKit

extension MainController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sections.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
        cell.textLabel?.text = sections[indexPath.row].name
            cell.detailTextLabel?.text = ">"
            return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let vc = sections[indexPath.row].viewController as? ExercisesController else {
            return
        }
        vc.screen = sections[indexPath.row].type
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
