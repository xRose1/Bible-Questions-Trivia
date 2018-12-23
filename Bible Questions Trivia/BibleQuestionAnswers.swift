//
//  BibleQuestionAnswers.swift
//  Bible Questions Trivia
//
//  Created by Sanjeev Bedasee on 11/17/18.
//  Copyright © 2018 Sanjeev Bedasee. All rights reserved.
//

import Foundation

class BibleQuestionBank {
    var list = [bibleQuestion]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = bibleQuestion(text: "Jesus was baptized in the Sea of Galilee.", correctAnswer: false)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(bibleQuestion(text: "Moses was married to Aaron\'s sister.", correctAnswer: false))
        
        list.append(bibleQuestion(text: "Judah was the first tribe to offer their loyalty to David.", correctAnswer: true))
        
        list.append(bibleQuestion(text: "David was the last king of all of Israel.", correctAnswer: false))
        
        list.append(bibleQuestion(text: "Jeroboam was the first king of the ten-tribe kingdom.", correctAnswer: true))
        
        list.append(bibleQuestion(text: "Manassa was the longest king in Judah.", correctAnswer: true))
        
        list.append(bibleQuestion(text: "Paul is of the tribe of Benjamin.", correctAnswer: true))
        
        list.append(bibleQuestion(text: "Luke 3:29 contains Jesus lineage through Joseph.", correctAnswer: false))
        
        list.append(bibleQuestion(text: "The Apostle Marks father was Zebedee", correctAnswer: false))
        
        list.append(bibleQuestion(text: "Jesus trusted Peter to take care of his mother", correctAnswer: false))
        
        list.append(bibleQuestion(text: "Luke was a doctor", correctAnswer: true))
        
        list.append(bibleQuestion(text: "Judah was orignally intended to be the first tribe to take posession of the land alloted", correctAnswer: false))
        
        list.append(bibleQuestion(text: "Babylon fell to the Medes and Persions in 539 B.C.E.", correctAnswer: true))
    }
}
