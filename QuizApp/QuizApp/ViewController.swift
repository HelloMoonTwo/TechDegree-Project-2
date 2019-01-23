//
//  ViewController.swift
//  QuizApp
//
//  Created by Francisco Luna on 1/22/19.
//  Copyright © 2019 Francisco Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // Buttons needed
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var scorePlayAgain: UIButton!
    
    // Labels for the questions
    @IBOutlet var gameQuestions: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

