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
    @IBOutlet weak var turnLabel: UILabel!
    
    var hangman = Hangman()
    var arr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player2Guess.delegate = self
        arr = hangman.getDashedWords(enteredString: hangman.player1Word)
        dashedLabel.text = arr.joined(separator: " ")
        hangImage.image = #imageLiteral(resourceName: "hang1")
        turnLabel.text = "Turns 6"
    }
    
    func showHang (chances: Int) {
        switch chances {
//        case 0:
//            hangImage.image = #imageLiteral(resourceName: "hang1")
        case 1:
            hangImage.image = #imageLiteral(resourceName: "hang2")
        case 2:
            hangImage.image = #imageLiteral(resourceName: "hang3")
        case 3:
            hangImage.image = #imageLiteral(resourceName: "hang4")
        case 4:
            hangImage.image = #imageLiteral(resourceName: "hang5")
        case 5:
            hangImage.image = #imageLiteral(resourceName: "hang6")
        case 6:
            hangImage.image = #imageLiteral(resourceName: "hang7")
        default:
            hangImage.image = #imageLiteral(resourceName: "hang1")
        }
    }
}

extension Player2ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        player2Guess.text? = ""
        player2Guess.text?.removeAll()
        return true
    }
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
        
        if textField == player2Guess {
        if let char = string.cString(using: String.Encoding.utf8) {
            let isBackSpace = strcmp(char, "\\b")
            if (isBackSpace == -92) {
                return false
            }
            }
            
            let chances = hangman.userTries
            hangman.checkWords(guess: string)
            showHang(chances: chances)
            turnLabel.text = "Turns \(6 - chances)"
            if chances == 6 {
                welcomeLabel2.text = "GAME OVER!!!"
                player2Guess.isHidden = true
                player2Guess.isEnabled = false
            }
            dashedLabel.text = hangman.dashedWords.joined(separator: " ")
        }
        return true && range.location < 1
    }
}
