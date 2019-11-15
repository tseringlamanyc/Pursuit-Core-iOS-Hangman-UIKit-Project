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
    
    var hangman = Hangman()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    player1WordEnter.delegate = self
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let player2VC = segue.destination as? Player2ViewController else {
            return 
        }
        player2VC.hangman = hangman
    }
    
    @IBAction func unwindSegue (segue: UIStoryboardSegue) {
        guard let player2VC = segue.source as? Player2ViewController else {
            return
        }
        hangman = player2VC.hangman
        hangman.dashedWords = [String]()
        hangman.userTries = 0
//        player1WordEnter.text = ""
    }

}

extension Player1ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        hangman.player1Word = player1WordEnter.text ?? ""
        return true
    }
}

