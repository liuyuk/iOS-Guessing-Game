//
//  ViewController.swift
//  guessing-game
//
//  Created by Kim Liu on 2018-03-12.
//  Copyright © 2018 Kim Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var random = arc4random_uniform(10) + 1;

    @IBOutlet var inputField: UITextField!
    @IBOutlet var outputMessage: UILabel!
    @IBAction func refreshButton(_ sender: Any) {
        outputMessage.text = "Number refreshed, try again."
        random = 7;
        
    }
    @IBAction func buttonAction(_ sender: Any) {
        guard let input = inputField.text, !input.isEmpty else {
            outputMessage.text = "Please input something...perhaps a number."
            return
        }
        let number = Int(input)
        if number == nil  {
            outputMessage.text = "...A number please."
        } else {
            if number == Int(random) {
                outputMessage.text = "That's right. That's the number."
            } else {
                outputMessage.text = "Oops, try again."
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

