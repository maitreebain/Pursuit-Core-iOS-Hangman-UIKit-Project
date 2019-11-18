//
//  UserGuessViewController.swift
//  Hangman
//
//  Created by Maitree Bain on 11/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class UserGuessViewController: UIViewController {

    @IBOutlet weak var guessWord: UILabel!
    
    @IBOutlet weak var playerTwoTextField: UITextField!
    
    var hangmanWord = readLineIntake()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//

        playerTwoTextField.delegate = self
//
        guessWord.text = hangmanWord.userWord(playerWord: hangmanWord.playerOneWord).joined(separator: " ")
        print(guessWord.text ?? "")
    }
    
}

extension UserGuessViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guessWord.text = hangmanWord.charCompare(playerOneAnswer: hangmanWord.playerOneWord, playerTwoGuess: string)
        
        return true
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}
