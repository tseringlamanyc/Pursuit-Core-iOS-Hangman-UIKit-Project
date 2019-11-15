//
//  Hangman.swift
//  Hangman
//
//  Created by Tsering Lama on 11/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class Hangman {
    
    var userTries = 0
    var player1Word = ""
    var player2Guess = ""
    var didWin = true
    var dashedWords = [String]()
    
    
    func getDashedWords (enteredString: String) -> [String] {
        for char in enteredString {
            dashedWords.append("_")
        }
        return dashedWords
    }
    
    func checkWords (guess: String) {
        if player1Word.contains(guess) {
            for (index, char) in player1Word.enumerated() {
                if guess == String(char) {
                    dashedWords[index] = guess
                }
            }
        } else {
            userTries += 1
        }
    }
    
//    func showHang (chances: Int) {
//        switch chances {
//        case 0:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang1")
//        case 1:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang3")
//        case 2:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang3")
//        case 3:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang4")
//        case 4:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang5")
//        case 5:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang6")
//        case 6:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang7")
//        default:
//            viewController.hangImage.image = #imageLiteral(resourceName: "hang1")
//        }
//    }
    
}
