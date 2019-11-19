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
    @IBOutlet weak var hangmanImage: UIImageView!
    
    
    var hangmanWord = readLineIntake()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerTwoTextField.delegate = self
        
        guessWord.text = hangmanWord.userWord(playerWord: hangmanWord.playerOneWord).joined(separator: " ")
        print(guessWord.text ?? "")
        print(hangmanWord.guessingNum)
    }
    
}

extension UserGuessViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guessWord.text = hangmanWord.charCompare(playerOneAnswer: hangmanWord.playerOneWord, playerTwoGuess: string)
        
        switch hangmanWord.guessingNum {
        case 1:
            hangmanImage.image = UIImage(named: "hang1")
        case 2:
            hangmanImage.image = UIImage(named: "hang2")
        case 3:
            hangmanImage.image = UIImage(named: "hang3")
        case 4:
             hangmanImage.image = UIImage(named: "hang4")
        case 5:
            hangmanImage.image = UIImage(named: "hang5")
        case 6:
            hangmanImage.image = UIImage(named: "hang6")
        case 7:
            hangmanImage.image = UIImage(named: "hang7")
        default:
            return false
        }
        
        return true
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if hangmanWord.guessingNum > 7 {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
