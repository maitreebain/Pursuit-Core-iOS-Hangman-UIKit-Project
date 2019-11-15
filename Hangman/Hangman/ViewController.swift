//
//  ViewController.swift
//  Hangman
//
//  Created by Alex Paul on 11/19/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var hangmanAns = readLineIntake()
    
//    var secretWord: [Character] = Array(repeating: "_" , count: readLineIntake.getCorrectAns(PlayerOneWord.count))
    
    @IBOutlet weak var playerOneTextField: UITextField!
    
    var playerWordArray: [Character] = []
    
    /* IMPORTANT ~!!!!!*/
    //                    if !(newWord.contains(value)) {
//}
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    playerOneTextField.delegate = self
  }
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Ran into should begin editing")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        playerWordArray = Array(textField.text ?? "")
        
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}




//    var aKey = "abcdefghijklmnopqrstuvwxyz" {
//        didSet {
//            for char in aKey {
//                if char == hangmanAns.getCorrectAns() {
//
//                }
//            }
//        }
//    }
