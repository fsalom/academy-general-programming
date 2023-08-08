//
//  PageViewController.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import Foundation
import UIKit

class PageViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!

    var viewModel: PageViewModel!

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required public init?(coder: NSCoder) {
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "MatchCell", bundle: nil), forCellReuseIdentifier: "MatchCell")
        self.nameLabel.text = viewModel.quiniela.name

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

}

extension PageViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.quiniela.matches.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell") as! MatchCell
        cell.match = viewModel.quiniela.matches[indexPath.row]
        return cell
    }


}
