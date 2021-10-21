//
//  ViewController.swift
//  Simple Dictionary App
//
//  Created by Abdirizak Hassan on 10/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputField: UITextField!
    
    @IBOutlet var findBtn: UIButton!
    
    @IBOutlet var answerLabel: UILabel!
    
    
    var englishToSomali:[String:String] = ["Boy":"Wiil",
                                           "Girl":"Gabar",
                                           "Tree":"Geed",
                                           "Street":"Wado",
                                           "Car":"Baabur",
                                           "Gift":"Hadiyad",
                                           "Window":"Daaqad",
                                           "Dog":"Ey"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        findBtn.layer.cornerRadius = 10
    }

    
    func translate() {
        
        guard inputField.text?.isEmpty == false else { return print("Cannot be Empty")}
        
        if (englishToSomali[inputField.text!] != nil) {
            answerLabel.text = englishToSomali[inputField.text!] ?? "nil"
        } else {
            answerLabel.text = "Not Found"
        }
    }
    
    @IBAction func didTapFind(_ sender: UIButton) {
        translate()
    }
    
    
    
    
}

