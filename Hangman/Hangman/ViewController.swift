//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var playerOneTextField: UITextField!
    
    var hangmanAns = readLineIntake()
//
//    var startGame = readLineIntake
    
    /* IMPORTANT ~!!!!!*/
    //                    if !(newWord.contains(value)) {
//}
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    playerOneTextField.delegate = self
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("segue entered")
        
        guard let userIntakeController = segue.destination as? UserGuessViewController else {
            return
        }
        print(hangmanAns.playerOneWord)
        userIntakeController.hangmanWord = hangmanAns
    }
}



extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Ran into should begin editing")
        return true
    }
    

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        hangmanAns.playerOneWord = textField.text ?? ""
        
        textField.resignFirstResponder()
        return true
    }
}


