//
//  ViewController.swift
//  QuizGame
//
//  Created by Nilüfer Altınoluk on 28.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let score = UserDefaults.standard.string(forKey: "score") ?? "0"
        
        lblScore.text = "Last Score: \(score)"
    
    }


}

