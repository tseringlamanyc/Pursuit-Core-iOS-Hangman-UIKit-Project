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
    arr = hangman.getDashedWords(enteredString: hangman.player1Word)
    dashedLabel.text = arr.joined(separator: " ")

    }


}

extension Player2ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        hangman.checkWords(guess: string)
        return true
    }
}
