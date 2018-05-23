//
//  ViewController.swift
//  TESTPRODUCT
//
//  Created by Dylan Gallup on 5/22/18.
//  Copyright © 2018 Dylan Gallup. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var mainText: UITextField!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        mainText.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mainLabel.text = "Welcome, " + textField.text!
    }

    //MARK: Actions
    @IBAction func mainButton(_ sender: UIButton) {
        mainLabel.text = "What is your name?"
        mainText.text = ""
    }
    

}

