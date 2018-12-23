//
//  ViewController.swift
//  Bible Questions Trivia
//  Content Taken Directly from New World Translation of the Bible
//  Thanks to relatedcode on github
//  Created by Sanjeev Bedasee on 11/17/18.
//  Copyright © 2018 Sanjeev Bedasee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let questionList = BibleQuestionBank()
    var answerChosen: Bool = false
    var questionProgress: Int = 0
    var score: Int = 0

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreNumber: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLevel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        if sender.tag == 1 {
            answerChosen = true
        }
        else if sender.tag == 2 {
            answerChosen = false
        }
        checkingAnswer()
        questionProgress = questionProgress + 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreNumber.text = "Score: \(score)"
        progressLevel.text = "\(questionProgress + 1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionProgress + 1)
    }
    
    
    func nextQuestion() {
        if questionProgress <= 12 {
            questionLabel.text = questionList.list[questionProgress].questionView
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Good Job!", message: "You have finished all the questions in this list. Keep retrying until the next update.", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.beginAgain()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            }
        
    }
    
    
    func checkingAnswer() {
        let rightAnswer = questionList.list[questionProgress].answerSelect
        if rightAnswer == answerChosen {
           ProgressHUD.showSuccess("Correct Answer")
            score += 1
        }
        else {
            ProgressHUD.showError("Wrong Answer")
   
        }
}

    func beginAgain () {
        score = 0
        questionProgress = 0
        nextQuestion()
    }
    
    
}
