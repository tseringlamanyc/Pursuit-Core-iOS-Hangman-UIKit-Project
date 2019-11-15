//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class Player1ViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var player1Word: UILabel!
    @IBOutlet weak var player1WordEnter: UITextField!
    @IBOutlet weak var submitWord: UIButton!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    player1WordEnter.delegate = self
    
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let player2VC = segue.destination as? Player2ViewController else {
            return 
        }
    }

}

extension Player1ViewController: UITextFieldDelegate{
    
}

