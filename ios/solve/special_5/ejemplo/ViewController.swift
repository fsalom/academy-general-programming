//
//  ViewController.swift
//  ejemplo
//
//  Created by Fernando Salom Carratala on 18/10/22.
//

import UIKit

class ViewController: UIViewController {

    var coin: CoinDTO!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        coin.name = "Moneda cambiada"

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            guard let vc = self.presentingViewController as? TableViewController else {
                return
            }
            vc.tableView.reloadData()
            self.dismiss(animated: true)
        }
    }


}

