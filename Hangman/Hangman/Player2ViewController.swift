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
    arr = hangman.getDashedWords(enteredString: hangman.player1Word)
    dashedLabel.text = arr.joined(separator: " ")

    }


}

extension Player2ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == player2Guess {
            
        }
    }
}
