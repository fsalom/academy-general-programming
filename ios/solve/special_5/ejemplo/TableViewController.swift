//
//  TableViewController.swift
//  ejemplo
//
//  Created by Fernando Salom Carratala on 18/10/22.
//

import UIKit

struct ListDTO: Codable {
    let data: [CoinDTO]
}
struct CoinDTO: Codable{
    var name: String
}

class TableViewController: UITableViewController {

    var coins = [CoinDTO]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        call()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coins.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExampleCell", for: indexPath)
        cell.textLabel?.text = coins[indexPath.row].name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "viewController") as? ViewController else{
            return
        }
        vc.coin = coins[indexPath.row]
        self.present(vc, animated: true)
    }

    func call(){
        Task {
            guard let url = URL(string: "https://api.coincap.io/v2/assets") else {
                return
            }
            let request = URLRequest(url: url)
            let (data, _) = try await URLSession.shared.data(for: request)
            let decoder = JSONDecoder()
            do {
                let parseData = try decoder.decode(ListDTO.self, from: data)
                coins = parseData.data
                tableView.reloadData()
            } catch let error {
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
                print("VUELVE A COMPILAR ERROR DEL SERVIDOR")
            }
        }
    }

}
