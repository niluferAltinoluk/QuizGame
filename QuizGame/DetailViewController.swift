//
//  DetailViewController.swift
//  QuizGame
//
//  Created by Nilüfer Altınoluk on 28.10.2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    let questions = ["Which planet in the Milky Way is the hottest? ","How many elements are in the periodic table? ","What Renaissance artist painted the Sistine Chapel ceiling?"]
    let answers = [["Venus", "Saturn", "Ceres"], ["118", "112", "222"], ["Michelangelo", "Picasso" , "Dali"]]

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    
    var currentQuestion = 0
    var score = 0
    var rightAnswer:UInt32 = 0
    
    var defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btnA.layer.cornerRadius = 10
        btnB.layer.cornerRadius = 10
        btnC.layer.cornerRadius = 10
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        nextQuestion()
        
     
    }
    
    @IBAction func btn(_ sender: UIButton) {
        
        if sender.tag == Int(rightAnswer) {
            print("RIGHT")
            score += 1
        
        }else{
            print("FALSE")
        }
        
        if currentQuestion != questions.count {
            
            nextQuestion()
            
            
        }
        else {
            
            defaults.set(String(score), forKey: "score")
            defaults.synchronize()
            self.dismiss(animated: true, completion: nil )
            
        }
        
        
    }
        
        func nextQuestion() {
            lblTitle.text = questions[currentQuestion]
            
            rightAnswer = arc4random_uniform(3) + 1
        
            
            var button = UIButton()
            
            var x = 1
            
            for i in 1...3{
                
                button = view.viewWithTag(i) as! UIButton
                
                if i == Int(rightAnswer) {
                    
                    button.setTitle(answers[currentQuestion][0], for: .normal)
                    
                }else{
                    button.setTitle(answers[currentQuestion][x], for: .normal)
                    x = 2
                }
                
                
            }
            
            currentQuestion += 1
            
            }
        }
        
        
        
    
    
  


