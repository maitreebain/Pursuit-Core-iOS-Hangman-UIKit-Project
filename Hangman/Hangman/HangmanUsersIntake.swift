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
    
    var guessingNum: Int
    
    init() {
        guessingNum = 0
        
    }
    
    func userWord(PlayerWord: Character, PlayerGuess: Character) {
        
        
    }
    
    
    func getCorrectAns(PlayerOneWord: String, PlayerTwoGuess: String) -> AnswerStatus {
        
        return PlayerOneWord == PlayerTwoGuess ? .correct : .incorrect
    }
    
}
