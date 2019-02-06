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
    @IBOutlet weak var letsPlay: UIButton!
    
    // Labels for the questions
    @IBOutlet weak var gameQuestion: UILabel!
    
    func playGame() {
        makeQuestion()
        gameQuestion.text = "What is the Capital of \(questionAsking)"
        buttonOne.setTitle(possibleAnswers[0], for: .normal)
        buttonTwo.setTitle(possibleAnswers[1], for: .normal)
        buttonThree.setTitle(possibleAnswers[2], for: .normal)
        buttonFour.setTitle(possibleAnswers[3], for: .normal)
        letsPlay.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playGame()
    }

    @IBAction func nextQuestion(_ sender: Any) {
    }
    
}

