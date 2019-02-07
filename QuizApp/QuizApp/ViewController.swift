//
//  ViewController.swift
//  QuizApp
//
//  Created by Francisco Luna on 1/22/19.
//  Copyright © 2019 Francisco Luna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    // Buttons needed for the game
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var letsPlay: UIButton!
    
    // Labels for the question
    @IBOutlet weak var gameQuestion: UILabel!
    
    // Function to get the final result of the round
    func finalResult() {
        switch gotRight {
        case 5: gameQuestion.text = "WooHoo! You got all right!"
        case 3...4: gameQuestion.text = "Great job, you got \(gotRight) correct"
        case 1...2: gameQuestion.text = "You may want to study a bit, you got \(gotRight) correct"
        default: gameQuestion.text = "Well, who needs to know this anyway? You got \(gotWrong) wrong!"
        }
    }
    
    // Function to create the question
    func playGame() {
        // Checks to see if enough quesitons have been asked
        // If more questions can be asked it will create one
        // If question limit has been meet, it will offer the player to play again
        if gotRight + gotWrong < questionsPerRound {
            makeQuestion()
            letsPlay.setTitle("Next Quesiton!", for: .normal)
            gameQuestion.text = "What is the Capital of \(questionAsking)"
            buttonOne.setTitle(possibleAnswers[0], for: .normal)
            buttonTwo.setTitle(possibleAnswers[1], for: .normal)
            buttonThree.setTitle(possibleAnswers[2], for: .normal)
            buttonFour.setTitle(possibleAnswers[3], for: .normal)
            letsPlay.isHidden = true
            buttonOne.isHidden = false
            buttonTwo.isHidden = false
            buttonThree.isHidden = false
            buttonFour.isHidden = false
        } else {
            finalResult()
            letsPlay.setTitle("Let's Play Again!", for: .normal)
            newGame()
        }
    }
    
    // Function to test if the player chose the right answer
    // If correct, player can go to the next question
    // If incorrect, player will see the right answer and be able to go the next question
    func testIfCorrect(buttonToTest: String) {
        if buttonToTest == questionAnswer {
            gameQuestion.text = "Correct!"
            letsPlay.isHidden = false
            buttonOne.isHidden = true
            buttonTwo.isHidden = true
            buttonThree.isHidden = true
            buttonFour.isHidden = true
            gotRight += 1
        } else {
            gameQuestion.text = "Sorry, the capital of \(questionAsking) is \(questionAnswer)"
            letsPlay.isHidden = false
            buttonOne.isHidden = true
            buttonTwo.isHidden = true
            buttonThree.isHidden = true
            buttonFour.isHidden = true
            gotWrong += 1
        }
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Sets things up for the player to start when they are ready
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        letsPlay.setTitle("Let's Play!", for: .normal)
        gameQuestion.text = "Hello and Welcome! This game test your knowledge in States and Capitals. Good Luck!"
    }
    
    // Gives actions to the buttons
    @IBAction func nextQuestion(_ sender: Any) {
        playGame()
    }
    @IBAction func testButtonOne(_ sender: Any) {
        testIfCorrect(buttonToTest: possibleAnswers[0])
    }
    @IBAction func testButtonTwo(_ sender: Any) {
        testIfCorrect(buttonToTest: possibleAnswers[1])
    }
    @IBAction func testButtonThree(_ sender: Any) {
        testIfCorrect(buttonToTest: possibleAnswers[2])
    }
    @IBAction func testButtonFour(_ sender: Any) {
        testIfCorrect(buttonToTest: possibleAnswers[3])
    }
    
    
}

