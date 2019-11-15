//
//  HangmanUsersIntake.swift
//  Hangman
//
//  Created by Maitree Bain on 11/13/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum AnswerStatus {
    case correct
    case incorrect
}

class readLineIntake {
    
    var guessingNum = 0
    var secretWord = [String]()
    var playerOneWord = ""
    
    
    func userWord(playerWord: String) -> [String] {
        let playerWord = playerOneWord
        secretWord = [String](repeating: "_ " , count: playerWord.count)
        
        return secretWord
    }
    
    
    func getCorrectAns(PlayerOneWord: String, PlayerTwoGuess: String) -> AnswerStatus {
        
        return PlayerOneWord == PlayerTwoGuess ? .correct : .incorrect
    }
    
}
