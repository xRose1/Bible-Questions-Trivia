//
//  BibleQuestions.swift
//  Bible Questions Trivia
//
//  Created by Sanjeev Bedasee on 11/17/18.
//  Copyright © 2018 Sanjeev Bedasee. All rights reserved.
//

import Foundation

class bibleQuestion {
    let questionView: String
    let answerSelect: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionView = text
        answerSelect = correctAnswer
    }
}

