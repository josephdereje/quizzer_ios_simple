//
//  ViewController.swift
//  Quzzier
//
//  Created by joseph on 2020/5/5.
//  Copyright © 2020 joseph_Eagles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var Questionslabel: UILabel!
    
    @IBOutlet weak var score: UILabel!
    var timer = Timer()
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
        // Do any additional setup after loading the view.
    }
    @IBAction func answerButton(_ sender: UIButton) {
        let useranswer =  sender.currentTitle!

        let actualanswer = quizBrain.checkAnswer(userAnswer: useranswer)
        
        if  actualanswer {
               sender.backgroundColor = UIColor.green
             print("You are correct")
            
        } else {
               sender.backgroundColor = UIColor.red
            print ("you are wrong")
            
        }
       
        quizBrain.nextQuestion()
     
        timer = Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
      
    }
  
    @objc func updateUI () {
        Questionslabel.text = quizBrain.getQuestionText()
        score.text = "Score : \(quizBrain.getscore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        print(progressBar.progress)
    }
}

