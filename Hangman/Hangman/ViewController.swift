//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomWordLabel: UILabel!
    
    @IBOutlet weak var playerOneTextField: UITextField!
    
    @IBOutlet weak var playerTwoTextField: UITextField!
    
    var hangmanAns = readLineIntake()
    
    
    
    var aKey = "abcdefghijklmnopqrstuvwxyz" {
        didSet {
            for char in aKey {
                if char == hangmanAns.getCorrectAns() {

                }
            }
        }
    }
    
//    var randomWord: [Character] = Array(alphabet.randomElement() ?? "Input a valid response.")
    //useranswer - a character 
//    var secretWord: [Character] = Array(repeating: "_" , count: randomWord.count)
    
    /* IMPORTANT ~!!!!!*/
    //                    if !(newWord.contains(value)) {
//}
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
//    view.backgroundColor = .black
    playerOneTextField.delegate = self
    playerTwoTextField.delegate = self
  }
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Ran into should begin editing")
        return true
    }
    

    
    
}
