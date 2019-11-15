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
    
}
