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
    
    
    func charCompare(playerOneAnswer: , ) {
//                var playerTwoAnswer = ""
//var oneLetter = Set<Int>()
//
//
//for (index, char) in playerOneWord.enumerated() {
//    if char == playerTwoGuess {
//        oneLetter.insert(index)
//        if oneLetter.contains(index){
//            playe
//        }
//    }
        
        //                for (index, char) in randomWord.enumerated(){
        //    if userInput == char {
        //        indices.insert(index)
        //    }
        //}
        //
        //for (index, _) in secretWord.enumerated(){
        //    if indices.contains(index){
        //        secretWord[index] = userInput
        //    }
        
        
    }
    
    
    
    
    
    
    
    func getCorrectAns(playerOneWord: String, playerTwoAnswer: String) -> AnswerStatus {
        
        return playerOneWord == playerTwoAnswer ? .correct : .incorrect
    }
    
}
