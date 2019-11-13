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
    
    var alphabet: [String] = ["abcdefghijklmnopqrstuvwxyz"]
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
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
