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
    
    func userIntake(userAnswerStatus: Character) -> AnswerStatus {


        return AnswerStatus.correct // correct / incorrect
    }
    
}
