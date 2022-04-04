//
//  ConfigurationViewController.swift
//  XO-game
//
//  Created by Михаил Киржнер on 04.04.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import UIKit

class ConfigurationViewController: UIViewController {
    @IBOutlet weak var gameModeSegment: UISegmentedControl!
    public var configDelegate: GameConfigDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeMode(_: Any) {
        let gameMode: GameMode
        switch gameModeSegment.selectedSegmentIndex {
        case 0:
            gameMode = .TwoPlayers
        case 1:
            gameMode = .againstTheComputer
        case 2:
            gameMode = .fiveMarks
        default:
            gameMode = .TwoPlayers
        }

        configDelegate?.setNewMode(newMode: gameMode)
    }

}
