//
//  ViewController.swift
//  Guess the Flag
//
//  Created by Akshay Ramesh on 5/11/20.
//  Copyright © 2020 Akshay Ramesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var trackQuestions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
        
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.lightGray.cgColor
        
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.lightGray.cgColor
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(showScore))

        askQuestion()

    }
    
    @objc func showScore(){
        let vc = UIActivityViewController(activityItems: ["Your score is \(score)"], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        trackQuestions += 1
        if(trackQuestions <= 10){
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
            
            button1.setImage(UIImage(named: countries[0]), for: .normal)
            button2.setImage(UIImage(named: countries[1]), for: .normal)
            button3.setImage(UIImage(named: countries[2]), for: .normal)
            
            title = countries[correctAnswer].uppercased() + "         " + "Score: \(score)"
        } else {
            let alertController = UIAlertController(title: "GAME OVER!", message: "Your score is \(score)", preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "EXIT GAME", style: .default, handler: endGame))
            
            present(alertController, animated: true)
        }

    }
    
    
    func endGame(action: UIAlertAction! = nil){
        
        exit(0)

    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
            var title: String
            let buttonTag = sender.tag
            
            if buttonTag == correctAnswer{
                title = "Correct"
                score += 1
            } else {
                title = "Wrong! \n You have chosen \(countries[buttonTag].uppercased()) flag"
                score -= 1
            }
            
            let alertController = UIAlertController(title: title,
                                                    message: "Your score is \(score)",
                                                    preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            
            present(alertController, animated: true)

    }
}

