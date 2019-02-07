//
//  GameLogic.swift
//  QuizApp
//
//  Created by Francisco Luna on 1/22/19.
//  Copyright © 2019 Francisco Luna. All rights reserved.
//

// Importing necessary Kits
import GameKit

// Createing a copy for the questions that can be asked
var possibleQuestions = QuestionList()

// Containers for question beinga asked
var questionAsking: String = ""
var questionAnswer: String = ""
var possibleAnswers: [String] = []

// Containers to help keep track of the game/rounds
var gotRight: Int = 0
var gotWrong: Int = 0
var questionsPerRound: Int = 5

// Funciton to create a question
func makeQuestion() {
    // This will get a random State/Question with it's Capital/Answer
    var randomLimit = GKRandomSource.sharedRandom().nextInt(upperBound: possibleQuestions.trivia.count)
    var questionAndAnswer = possibleQuestions.trivia[randomLimit]
    possibleQuestions.trivia.remove(at: randomLimit)
    questionAsking = questionAndAnswer["Question"]!
    questionAnswer = questionAndAnswer["Answer"]!
    
    // This will get 3 other random answer into the mix of choices
    var tracker: Int = 0
    possibleAnswers = []
    repeat {
        tracker += 1
        let randomLimit = GKRandomSource.sharedRandom().nextInt(upperBound: possibleQuestions.trivia.count)
        var getRandomAnswer: [String: String] = [:]
        getRandomAnswer = possibleQuestions.trivia[randomLimit]
        possibleAnswers += [getRandomAnswer["Answer"]!]
    } while tracker < 3
    
    // This will place the correct answer into the mix
    randomLimit = GKRandomSource.sharedRandom().nextInt(upperBound: possibleAnswers.count)
    possibleAnswers.insert(questionAnswer, at: randomLimit)
}

// Function for the game to start again
func newGame() {
    gotRight = 0
    gotWrong = 0
    possibleQuestions = QuestionList()
}

