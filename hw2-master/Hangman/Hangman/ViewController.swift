//
//  ViewController.swift
//  Hangman
//
//  Created by CiCi on 2/19/18.
//  Copyright © 2018 iOS DeCal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* Variables */
    var answer = "";
    var guesses = [String]();
    var incorrect = [String]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let handmanPhrase = HangmanPhrases()
        let phrase: String = hangmanPhrase.getRandomPhrase()
        print("Answer is: " + phrase)
        answer = phrase.uppercased(); /* update the answer to make it soid */
        updateWordLabel(result: answerToBlanks());
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    func answerToBlanks()->String{
        var result = ""
        for char in answer.characters{
            if (char == " "){
                result += "  "
            }
            else if (!guesses.contains(String(char))){
                result += "_ "
            }
            else{
                result += String(char) + " "
            }
        }
        return result
    }
    

}
