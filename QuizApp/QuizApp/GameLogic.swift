//
//  GameLogic.swift
//  QuizApp
//
//  Created by Francisco Luna on 1/22/19.
//  Copyright © 2019 Francisco Luna. All rights reserved.
//

// Containers to help keep count of the quiz game
var currentQuestion: [[String]] = []
var correctlyAnswered: [[String]] = []
var incorrectlyAnswered: [[String]] = []
var questionsAsked: [String] = []
var questionsPerGame: Int = 5

// Containers for the question being asked
var questionAsked: String = "What is the Capital of \(currentQuestion)?"

// Containers for end game info
var gotWrong: String = "You got \(incorrectlyAnswered.count) wrong."
var gotRight: String = "You got \(correctlyAnswered.count) crrect."
