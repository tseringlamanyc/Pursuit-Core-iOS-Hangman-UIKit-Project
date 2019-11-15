//
//  Player2ViewController.swift
//  Hangman
//
//  Created by Tsering Lama on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class Player2ViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel2: UILabel!
    @IBOutlet weak var dashedLabel: UILabel!
    @IBOutlet weak var player2Guess: UITextField!
    @IBOutlet weak var hangImage: UIImageView!
    @IBOutlet weak var playAgain: UIButton!
    
    var hangman = Hangman()
    var p1VC = Player1ViewController()
    var arr = [String]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    player2Guess.delegate = self
    hangman.dashedWords = hangman.getDashedWords(enteredString: hangman.player1Word)
    dashedLabel.text = hangman.dashedWords.joined(separator: " ")
    hangman.player2Guess = player2Guess.text ?? ""
    }
    
}

extension Player2ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == player2Guess {
        hangman.checkWords(guess: string)
            
         
    }
        return true
}
}
