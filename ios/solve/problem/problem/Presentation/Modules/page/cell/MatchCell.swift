//
//  CarCell.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import UIKit

class MatchCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var drawButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    var match: Match! {
        didSet {
            DispatchQueue.main.async {
                self.setupView()
                self.nameLabel.text = "\(self.match.name)"
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        oneButton.backgroundColor = .white
        drawButton.backgroundColor = .white
        twoButton.backgroundColor = .white
        nameLabel.text = ""
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupView() {
        oneButton.tintColor = .black
        drawButton.tintColor = .black
        twoButton.tintColor = .black
        oneButton.backgroundColor = .white
        drawButton.backgroundColor = .white
        twoButton.backgroundColor = .white
        guard let option = self.match.option else {
            return
        }
        switch option {
        case .one:
            oneButton.tintColor = .white
            oneButton.backgroundColor = .red
        case .draw:
            drawButton.tintColor = .white
            drawButton.backgroundColor = .red
        case .two:
            twoButton.tintColor = .white
            twoButton.backgroundColor = .red
        }
    }
    
    @IBAction func didPressOne(_ sender: Any) {
        self.match.option = .one
        setupView()
    }
    @IBAction func didPressDraw(_ sender: Any) {
        self.match.option = .draw
        setupView()
    }
    @IBAction func didPressTwo(_ sender: Any) {
        self.match.option = .two
        setupView()
    }
}
