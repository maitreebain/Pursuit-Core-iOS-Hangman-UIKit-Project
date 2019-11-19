//
//  HangmanUsersIntake.swift
//  Hangman
//
//  Created by Maitree Bain on 11/13/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

class readLineIntake {
    
    var guessingNum = 0
    var secretWord = [String]()
    var playerOneWord = ""
    
    
    func userWord(playerWord: String) -> [String] {
        let playerWord = playerOneWord
        secretWord = [String](repeating: "_ " , count: playerWord.count)
        
        return secretWord
    }
    
    
    func charCompare(playerOneAnswer: String, playerTwoGuess: String) -> String {
        var counter = 0
        
        for char in playerOneAnswer{
            if char == Character(playerTwoGuess) {
                secretWord[counter] = String(char)
            } else {
                counter += 1
            }
        }
        if !(playerOneAnswer.contains(playerTwoGuess)){
        guessingNum += 1
        print(guessingNum)
        }
        
        return secretWord.joined(separator: " ")
    }
    
    
}
